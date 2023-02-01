import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:projectunity/core/extensions/date_time.dart';
import 'package:projectunity/model/leave/leave.dart';
import '../../core/utils/const/firestore.dart';

@Singleton()
class UserLeaveService {
  final _leaveDbCollection = FirebaseFirestore.instance
      .collection(FirestoreConst.leaves)
      .withConverter(
          fromFirestore: Leave.fromFireStore,
          toFirestore: (Leave leave, _) => leave.toFireStore(leave));

  Future<void> applyForLeave(Leave leaveRequestData) async {
    final leaveUid = leaveRequestData.leaveId;
    _leaveDbCollection.doc(leaveUid).set(leaveRequestData);
  }

  Future<List<Leave>> getAllLeavesOfUser(String id) async {
    final data = await _leaveDbCollection.where('uid', isEqualTo: id).get();
    return data.docs.map((doc) => doc.data()).toList();
  }

  Future<List<Leave>> getRequestedLeave(String id) async {
    final data = await _leaveDbCollection
        .where(FirestoreConst.uid, isEqualTo: id)
        .where(FirestoreConst.leaveStatus, isEqualTo: pendingLeaveStatus)
        .get();

    List<Leave> leaves = data.docs.map((doc) => doc.data()).toList();
    return leaves.where((element) => element.startDate.dateOnly.isAfter(DateTime.now().dateOnly) || element.startDate.dateOnly.isAtSameMomentAs(DateTime.now().dateOnly)).toList();
  }

  Future<List<Leave>> getUpcomingLeaves(String employeeId) async {
    final data = await _leaveDbCollection
        .where(FirestoreConst.uid, isEqualTo: employeeId)
        .where(FirestoreConst.leaveStatus, isEqualTo: approveLeaveStatus)
        .get();
    return data.docs.map((doc) => doc.data()).where((leave) => leave.startDate >= DateTime.now().timeStampToInt).toList();
  }

  Future<void> deleteLeaveRequest(String leaveId) async {
    await _leaveDbCollection.doc(leaveId).delete();
  }

  Future<double> getUserUsedLeaveCount(String id) async {
    DateTime currentTime = DateTime.now();
    final data = await _leaveDbCollection
        .where(FirestoreConst.uid, isEqualTo: id)
        .where(FirestoreConst.leaveStatus, isEqualTo: approveLeaveStatus)
        .get();

    List<Leave> approvedLeaves = data.docs.map((doc) => doc.data()).toList();
    double leaveCount = 0.0;

    approvedLeaves
        .where((leave) =>
    leave.startDate < currentTime.millisecondsSinceEpoch &&
        leave.startDate.toDate.year == currentTime.year)
        .forEach((leave) {
         int weekendDays = List.generate(leave.endDate.toDate.difference(leave.startDate.toDate).inDays,
                 (differenceByDays) => leave.startDate.toDate.add(Duration(days: differenceByDays))).where((date) => date.isWeekend).length;
      leaveCount += leave.totalLeaves - weekendDays;
    });
    return leaveCount;
  }

  Future<void> deleteAllLeaves(String id) async {
    _leaveDbCollection.where(FirestoreConst.uid, isEqualTo: id).get().then((snapshot) async{
      for (var deleteLeaveDoc in snapshot.docs)  {
        await deleteLeaveRequest(deleteLeaveDoc.id);
      }
    });
  }
}