import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:projectunity/data/core/exception/error_const.dart';
import 'package:projectunity/data/core/extensions/date_time.dart';
import 'package:projectunity/data/model/leave/leave.dart';
import 'package:projectunity/data/provider/user_data.dart';
import 'package:projectunity/data/services/leave_service.dart';
import 'package:projectunity/ui/user/leaves/leaves_screen/bloc/leaves/user_leave_bloc.dart';
import 'package:projectunity/ui/user/leaves/leaves_screen/bloc/leaves/user_leave_event.dart';
import 'package:projectunity/ui/user/leaves/leaves_screen/bloc/leaves/user_leave_state.dart';

import 'user_leave_bloc_test.mocks.dart';

@GenerateMocks([LeaveService, UserManager])
void main() {
  late LeaveService leaveService;
  late UserManager userManager;
  late UserLeaveBloc userLeaveBloc;
  const String employeeId = 'CA 1044';
  DateTime today = DateTime.now();

  Leave upcomingLeave = Leave(
      leaveId: 'Leave Id',
      uid: "user id",
      leaveType: 1,
      startDate: today.add(const Duration(days: 1)).timeStampToInt,
      endDate: today.add(const Duration(days: 2)).timeStampToInt,
      totalLeaves: 2,
      reason: 'Suffering from viral fever',
      leaveStatus: approveLeaveStatus,
      appliedOn: today.timeStampToInt,
      perDayDuration: const [1, 1]);

  Leave pastLeave = Leave(
      leaveId: 'Leave-Id',
      uid: "user id",
      leaveType: 1,
      startDate: today.subtract(const Duration(days: 2)).timeStampToInt,
      endDate: today.subtract(const Duration(days: 1)).timeStampToInt,
      totalLeaves: 1,
      reason: 'Suffering from viral fever',
      leaveStatus: approveLeaveStatus,
      appliedOn: today.timeStampToInt,
      perDayDuration: const [1]);
  setUp(() {
    leaveService = MockLeaveService();
    userManager = MockUserManager();
    userLeaveBloc = UserLeaveBloc(userManager, leaveService);
  });

  group('UserLeaveBloc stream test', () {
    test('Emits loading state as initial state of UserLeavesBloc', () {
      expect(userLeaveBloc.state, UserLeaveInitialState());
    });

    test(
        'Emits loading state and success state after add UserLeaveEvent respectively',
        () {
      userLeaveBloc.add(FetchUserLeaveEvent());
      when(userManager.employeeId).thenReturn(employeeId);
      when(leaveService.getAllLeavesOfUser(employeeId))
          .thenAnswer((_) async => [upcomingLeave, pastLeave]);
      expectLater(
          userLeaveBloc.stream,
          emitsInOrder([
            UserLeaveLoadingState(),
            UserLeaveSuccessState(
                pastLeaves: [pastLeave], upcomingLeaves: [upcomingLeave])
          ]));
    });
    test('Emits error state when Exception is thrown', () {
      userLeaveBloc.add(FetchUserLeaveEvent());

      when(userManager.employeeId).thenReturn(employeeId);
      when(leaveService.getAllLeavesOfUser(employeeId))
          .thenThrow(Exception('Couldn\'t load'));
      expectLater(
          userLeaveBloc.stream,
          emitsInOrder([
            UserLeaveLoadingState(),
            UserLeaveErrorState(error: firestoreFetchDataError)
          ]));
    });
  });
}
