// Mocks generated by Mockito 5.3.2 from annotations
// in projectunity/test/unit_test/shared/home_who_is_out_card/who_is_out_card_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:projectunity/data/model/employee/employee.dart' as _i6;
import 'package:projectunity/data/model/leave/leave.dart' as _i4;
import 'package:projectunity/data/services/employee_service.dart' as _i5;
import 'package:projectunity/data/services/leave_service.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [LeaveService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLeaveService extends _i1.Mock implements _i2.LeaveService {
  MockLeaveService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<List<_i4.Leave>> get leaves => (super.noSuchMethod(
        Invocation.getter(#leaves),
        returnValue: _i3.Stream<List<_i4.Leave>>.empty(),
      ) as _i3.Stream<List<_i4.Leave>>);
  @override
  void fetchLeaves() => super.noSuchMethod(
        Invocation.method(
          #fetchLeaves,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.Future<bool> checkLeaveAlreadyApplied({
    required String? userId,
    required Map<DateTime, int>? dateDuration,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkLeaveAlreadyApplied,
          [],
          {
            #userId: userId,
            #dateDuration: dateDuration,
          },
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
  @override
  _i3.Future<List<_i4.Leave>> getRecentLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getRecentLeaves,
          [],
        ),
        returnValue: _i3.Future<List<_i4.Leave>>.value(<_i4.Leave>[]),
      ) as _i3.Future<List<_i4.Leave>>);
  @override
  _i3.Future<List<_i4.Leave>> getUpcomingLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getUpcomingLeaves,
          [],
        ),
        returnValue: _i3.Future<List<_i4.Leave>>.value(<_i4.Leave>[]),
      ) as _i3.Future<List<_i4.Leave>>);
  @override
  _i3.Future<void> updateLeaveStatus(
    String? id,
    Map<String, dynamic>? map,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateLeaveStatus,
          [
            id,
            map,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<List<_i4.Leave>> getAllLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getAllLeaves,
          [],
        ),
        returnValue: _i3.Future<List<_i4.Leave>>.value(<_i4.Leave>[]),
      ) as _i3.Future<List<_i4.Leave>>);
  @override
  _i3.Future<List<_i4.Leave>> getAllAbsence({DateTime? date}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllAbsence,
          [],
          {#date: date},
        ),
        returnValue: _i3.Future<List<_i4.Leave>>.value(<_i4.Leave>[]),
      ) as _i3.Future<List<_i4.Leave>>);
  @override
  _i3.Future<void> applyForLeave(_i4.Leave? leaveRequestData) =>
      (super.noSuchMethod(
        Invocation.method(
          #applyForLeave,
          [leaveRequestData],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<List<_i4.Leave>> getAllLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllLeavesOfUser,
          [id],
        ),
        returnValue: _i3.Future<List<_i4.Leave>>.value(<_i4.Leave>[]),
      ) as _i3.Future<List<_i4.Leave>>);
  @override
  _i3.Future<List<_i4.Leave>> getRecentLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRecentLeavesOfUser,
          [id],
        ),
        returnValue: _i3.Future<List<_i4.Leave>>.value(<_i4.Leave>[]),
      ) as _i3.Future<List<_i4.Leave>>);
  @override
  _i3.Future<List<_i4.Leave>> getPastLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPastLeavesOfUser,
          [id],
        ),
        returnValue: _i3.Future<List<_i4.Leave>>.value(<_i4.Leave>[]),
      ) as _i3.Future<List<_i4.Leave>>);
  @override
  _i3.Future<List<_i4.Leave>> getRequestedLeave(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRequestedLeave,
          [id],
        ),
        returnValue: _i3.Future<List<_i4.Leave>>.value(<_i4.Leave>[]),
      ) as _i3.Future<List<_i4.Leave>>);
  @override
  _i3.Future<List<_i4.Leave>> getUpcomingLeavesOfUser(String? employeeId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpcomingLeavesOfUser,
          [employeeId],
        ),
        returnValue: _i3.Future<List<_i4.Leave>>.value(<_i4.Leave>[]),
      ) as _i3.Future<List<_i4.Leave>>);
  @override
  _i3.Future<void> deleteLeaveRequest(String? leaveId) => (super.noSuchMethod(
        Invocation.method(
          #deleteLeaveRequest,
          [leaveId],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<double> getUserUsedLeaves(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getUserUsedLeaves,
          [id],
        ),
        returnValue: _i3.Future<double>.value(0.0),
      ) as _i3.Future<double>);
  @override
  _i3.Future<void> deleteAllLeavesOfUser(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteAllLeavesOfUser,
          [id],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<_i4.Leave?> fetchLeave(String? id) => (super.noSuchMethod(
        Invocation.method(
          #fetchLeave,
          [id],
        ),
        returnValue: _i3.Future<_i4.Leave?>.value(),
      ) as _i3.Future<_i4.Leave?>);
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [EmployeeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockEmployeeService extends _i1.Mock implements _i5.EmployeeService {
  MockEmployeeService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<List<_i6.Employee>> get employees => (super.noSuchMethod(
        Invocation.getter(#employees),
        returnValue: _i3.Stream<List<_i6.Employee>>.empty(),
      ) as _i3.Stream<List<_i6.Employee>>);
  @override
  void fetchEmployees() => super.noSuchMethod(
        Invocation.method(
          #fetchEmployees,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.Future<void> addEmployeeBySpaceId({
    required _i6.Employee? employee,
    required String? spaceId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #addEmployeeBySpaceId,
          [],
          {
            #employee: employee,
            #spaceId: spaceId,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<_i6.Employee?> getEmployeeBySpaceId({
    required String? userId,
    required String? spaceId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getEmployeeBySpaceId,
          [],
          {
            #userId: userId,
            #spaceId: spaceId,
          },
        ),
        returnValue: _i3.Future<_i6.Employee?>.value(),
      ) as _i3.Future<_i6.Employee?>);
  @override
  _i3.Future<List<_i6.Employee>> getEmployees() => (super.noSuchMethod(
        Invocation.method(
          #getEmployees,
          [],
        ),
        returnValue: _i3.Future<List<_i6.Employee>>.value(<_i6.Employee>[]),
      ) as _i3.Future<List<_i6.Employee>>);
  @override
  _i3.Future<_i6.Employee?> getEmployee(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getEmployee,
          [id],
        ),
        returnValue: _i3.Future<_i6.Employee?>.value(),
      ) as _i3.Future<_i6.Employee?>);
  @override
  _i3.Future<bool> hasUser(String? email) => (super.noSuchMethod(
        Invocation.method(
          #hasUser,
          [email],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
  @override
  _i3.Future<void> addEmployee(_i6.Employee? employee) => (super.noSuchMethod(
        Invocation.method(
          #addEmployee,
          [employee],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> updateEmployeeDetails({required _i6.Employee? employee}) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateEmployeeDetails,
          [],
          {#employee: employee},
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> changeEmployeeRoleType(
    String? id,
    int? roleType,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #changeEmployeeRoleType,
          [
            id,
            roleType,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> deleteEmployee(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteEmployee,
          [id],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
