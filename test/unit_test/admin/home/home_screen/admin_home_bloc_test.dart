import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:projectunity/data/core/exception/error_const.dart';
import 'package:projectunity/data/core/extensions/date_time.dart';
import 'package:projectunity/data/model/employee/employee.dart';
import 'package:projectunity/data/model/leave/leave.dart';
import 'package:projectunity/data/model/leave_application.dart';
import 'package:projectunity/data/provider/user_data.dart';
import 'package:projectunity/data/services/employee_service.dart';
import 'package:projectunity/data/services/leave_service.dart';
import 'package:projectunity/ui/admin/home/home_screen/bloc/admin_home_bloc.dart';
import 'package:projectunity/ui/admin/home/home_screen/bloc/admin_home_event.dart';
import 'package:projectunity/ui/admin/home/home_screen/bloc/admin_home_state.dart';

import 'admin_home_bloc_test.mocks.dart';

@GenerateMocks([EmployeeService, LeaveService, UserManager])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late EmployeeService employeeService;
  late LeaveService leaveService;
  late UserManager userManager;
  late AdminHomeBloc adminHomeBloc;

  Employee employee = const Employee(
      uid: 'id',
      role: 1,
      name: 'Andrew jhone',
      employeeId: '100',
      email: 'andrew.j@canopas.com',
      designation: 'Android developer');

  Leave leave = const Leave(
      leaveId: 'leave-id',
      uid: 'id',
      type: 2,
      startDate: 500,
      endDate: 600,
      total: 2,
      reason: 'reason',
      status: 2,
      appliedOn: 400,
      perDayDuration: [0, 1]);
  AdminHomeState initialState = const AdminHomeState();

  AdminHomeState loadingState = const AdminHomeState(
    status: AdminHomeStatus.loading,
  );

  AdminHomeState failureState = const AdminHomeState(
      status: AdminHomeStatus.failure, error: firestoreFetchDataError);

  setUp(() {
    employeeService = MockEmployeeService();
    leaveService = MockLeaveService();
    userManager = MockUserManager();
    adminHomeBloc = AdminHomeBloc(
      leaveService,
      employeeService,
      userManager
    );
  });

  group('AdminHomeScreenBloc', () {
    test('emits initial state after AdminHome screen is open', () {
      expect(adminHomeBloc.state, initialState);
    });
    test('Emits failure state due to any exception', () {
      when(leaveService.getAllAbsence()).thenAnswer((_) async {
        return [leave, leave];
      });

      when(employeeService.getEmployees())
          .thenThrow(Exception(firestoreFetchDataError));

      adminHomeBloc.add(AdminHomeInitialLoadEvent());

      expectLater(
          adminHomeBloc.stream, emitsInOrder([loadingState, failureState]));
    });

    test(
        'Emits loading state while fetching data from firestore and then emits Success state with  data with correct remaining leavews',
        () async {
      List<Employee> employeeList = [employee];
      List<Leave> leaveList = [leave];

      when(employeeService.getEmployees())
          .thenAnswer((_) async => employeeList);
      when(leaveService.getLeaveRequestOfUsers())
          .thenAnswer((_) async => leaveList);

      adminHomeBloc.add(AdminHomeInitialLoadEvent());

      LeaveApplication la = LeaveApplication(
        employee: employee,
        leave: leave,
      );
      Map<DateTime, List<LeaveApplication>> map = {
        leave.startDate.toDate.dateOnly: [la]
      };
      AdminHomeState successState = AdminHomeState(
        status: AdminHomeStatus.success,
        leaveAppMap: map,
      );
      expectLater(
          adminHomeBloc.stream, emitsInOrder([loadingState, successState]));
    });

    test(
        'Emits state with status as success and list of leave application is empty when leave user id doesn\'t match with any user id',
        () {
      Employee empl = const Employee(
          uid: 'user id',
          role: 2,
          name: 'Andrew jhone',
          employeeId: 'Ca 1254',
          email: 'andrew.j@canopas.com',
          designation: 'Android developer');

      List<Employee> employees = [empl];
      List<Leave> leaves = [leave];

      when(employeeService.getEmployees()).thenAnswer((_) async => employees);
      when(leaveService.getLeaveRequestOfUsers())
          .thenAnswer((_) async => leaves);

      adminHomeBloc.add(AdminHomeInitialLoadEvent());

      AdminHomeState successState = const AdminHomeState(
        status: AdminHomeStatus.success,
        leaveAppMap: {},
      );

      expectLater(adminHomeBloc.stream, emitsThrough(successState));
    });
  });

  tearDownAll(() async {
    await adminHomeBloc.close();
  });
}