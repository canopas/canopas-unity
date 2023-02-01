import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:projectunity/core/extensions/date_time.dart';
import 'package:projectunity/model/employee/employee.dart';
import 'package:projectunity/model/leave/leave.dart';
import 'package:projectunity/model/leave_application.dart';
import 'package:projectunity/services/admin/employee_service.dart';
import 'package:projectunity/services/admin/leave_service.dart';
import 'package:projectunity/ui/shared/employees_calendar/bloc/calendar_leaves_bloc/employees_calendar_leaves_bloc.dart';
import 'package:projectunity/ui/shared/employees_calendar/bloc/calendar_leaves_bloc/employees_calendar_leaves_state.dart';
import 'package:projectunity/ui/shared/employees_calendar/bloc/calendar_leaves_bloc/employees_calender_leaves_event.dart';

import 'employees_leave_calendar_bloc_test.mocks.dart';

@GenerateMocks([EmployeeService,AdminLeaveService])
void main(){

  late EmployeeService employeeService;
  late AdminLeaveService adminLeaveService;
  late EmployeesCalendarLeavesBloc whoIsOutViewBloc;

  const employee = Employee(
    id: "123",
    roleType: 2,
    name: "test",
    employeeId: "103",
    email: "abc@gmail.com",
    designation: "tester",
  );

  final currentTime = DateTime.now().timeStampToInt;
  final leave = Leave(
      leaveId: "234",
      uid: "123",
      leaveType: 1,
      startDate: currentTime,
      endDate: currentTime,
      totalLeaves: 1.0,
      reason: 'leave reason',
      leaveStatus: 1,
      appliedOn: currentTime,
      perDayDuration: const [1]);

  List<LeaveApplication> leaveApplications = [LeaveApplication(employee: employee, leave: leave)];

  setUpAll((){
       employeeService = MockEmployeeService();
       adminLeaveService = MockAdminLeaveService();
       whoIsOutViewBloc = EmployeesCalendarLeavesBloc(employeeService, adminLeaveService);
  });

  group("who is out view test", () {
    test("who is out view initial load test", () {
      when(employeeService.getEmployees()).thenAnswer((_) => Future(() => [employee]));
      when(adminLeaveService.getAllLeaves()).thenAnswer((_) => Future(() => [leave]));
      whoIsOutViewBloc.add(EmployeeCalenadarLeavesInitialLoadEvent());
      expect(whoIsOutViewBloc.stream, emitsInOrder([
        EmployeesCalendarLeavesLoadingState(),
        EmployeesCalendarLeavesSuccessState(leaveApplications: leaveApplications)
      ]));
    });

    test("who is out view date select test", () {
      whoIsOutViewBloc.add(GetSelectedDateLeavesEvent(currentTime.toDate.add(const Duration(days: 5))));
      whoIsOutViewBloc.add(GetSelectedDateLeavesEvent(currentTime.toDate));
      expect(whoIsOutViewBloc.stream, emitsInOrder([
          EmployeesCalendarLeavesSuccessState(leaveApplications: const []),
          EmployeesCalendarLeavesSuccessState(leaveApplications: leaveApplications),
      ]));
    });
  });

}
