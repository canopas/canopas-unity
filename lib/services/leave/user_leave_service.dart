import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:projectunity/model/leave/leave.dart';

@Singleton()
class UserLeaveService {
  final _leaveDbCollection = FirebaseFirestore.instance
      .collection('leaves')
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

  Future<List<Leave>> getAllRequests() async {
    final data =
        await _leaveDbCollection.where('leave_status', isEqualTo: 1).get();
    return data.docs.map((doc) => doc.data()).toList();
  }
}