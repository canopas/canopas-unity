// Mocks generated by Mockito 5.4.0 from annotations
// in projectunity/test/unit_test/user/employees/detail/user_employee_detail_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:cloud_firestore/cloud_firestore.dart' as _i2;
import 'package:flutter_bloc/flutter_bloc.dart' as _i11;
import 'package:mockito/mockito.dart' as _i1;
import 'package:projectunity/data/model/employee/employee.dart' as _i6;
import 'package:projectunity/data/model/leave/leave.dart' as _i8;
import 'package:projectunity/data/services/employee_service.dart' as _i4;
import 'package:projectunity/data/services/leave_service.dart' as _i7;
import 'package:projectunity/ui/user/employees/detail/bloc/user_employee_detail_bloc.dart'
    as _i9;
import 'package:projectunity/ui/user/employees/detail/bloc/user_employee_detail_event.dart'
    as _i10;
import 'package:projectunity/ui/user/employees/detail/bloc/user_employee_detail_state.dart'
    as _i3;

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

class _FakeFirebaseFirestore_0 extends _i1.SmartFake
    implements _i2.FirebaseFirestore {
  _FakeFirebaseFirestore_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserEmployeeDetailState_1 extends _i1.SmartFake
    implements _i3.UserEmployeeDetailState {
  _FakeUserEmployeeDetailState_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [EmployeeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockEmployeeService extends _i1.Mock implements _i4.EmployeeService {
  MockEmployeeService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FirebaseFirestore get fireStore => (super.noSuchMethod(
        Invocation.getter(#fireStore),
        returnValue: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#fireStore),
        ),
      ) as _i2.FirebaseFirestore);
  @override
  _i5.Future<void> addEmployeeBySpaceId({
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
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i6.Employee?> getEmployeeBySpaceId({
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
        returnValue: _i5.Future<_i6.Employee?>.value(),
      ) as _i5.Future<_i6.Employee?>);
  @override
  _i5.Future<List<_i6.Employee>> getEmployees() => (super.noSuchMethod(
        Invocation.method(
          #getEmployees,
          [],
        ),
        returnValue: _i5.Future<List<_i6.Employee>>.value(<_i6.Employee>[]),
      ) as _i5.Future<List<_i6.Employee>>);
  @override
  _i5.Future<_i6.Employee?> getEmployee(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getEmployee,
          [id],
        ),
        returnValue: _i5.Future<_i6.Employee?>.value(),
      ) as _i5.Future<_i6.Employee?>);
  @override
  _i5.Future<bool> hasUser(String? email) => (super.noSuchMethod(
        Invocation.method(
          #hasUser,
          [email],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<void> addEmployee(_i6.Employee? employee) => (super.noSuchMethod(
        Invocation.method(
          #addEmployee,
          [employee],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> updateEmployeeDetails({required _i6.Employee? employee}) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateEmployeeDetails,
          [],
          {#employee: employee},
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> changeEmployeeRoleType(
    String? id,
    _i6.Role? role,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #changeEmployeeRoleType,
          [
            id,
            role,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> deleteEmployee(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteEmployee,
          [id],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [LeaveService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLeaveService extends _i1.Mock implements _i7.LeaveService {
  MockLeaveService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FirebaseFirestore get fireStore => (super.noSuchMethod(
        Invocation.getter(#fireStore),
        returnValue: _FakeFirebaseFirestore_0(
          this,
          Invocation.getter(#fireStore),
        ),
      ) as _i2.FirebaseFirestore);
  @override
  set fireStore(_i2.FirebaseFirestore? _fireStore) => super.noSuchMethod(
        Invocation.setter(
          #fireStore,
          _fireStore,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<List<_i8.Leave>> getLeaveRequestOfUsers() => (super.noSuchMethod(
        Invocation.method(
          #getLeaveRequestOfUsers,
          [],
        ),
        returnValue: _i5.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i5.Future<List<_i8.Leave>>);
  @override
  _i5.Future<bool> checkLeaveAlreadyApplied({
    required String? userId,
    required Map<DateTime, _i8.LeaveDayDuration>? dateDuration,
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
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<List<_i8.Leave>> getRecentLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getRecentLeaves,
          [],
        ),
        returnValue: _i5.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i5.Future<List<_i8.Leave>>);
  @override
  _i5.Future<List<_i8.Leave>> getUpcomingLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getUpcomingLeaves,
          [],
        ),
        returnValue: _i5.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i5.Future<List<_i8.Leave>>);
  @override
  _i5.Future<void> updateLeaveStatus(
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
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<List<_i8.Leave>> getAllLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getAllLeaves,
          [],
        ),
        returnValue: _i5.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i5.Future<List<_i8.Leave>>);
  @override
  _i5.Future<List<_i8.Leave>> getAllAbsence({DateTime? date}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllAbsence,
          [],
          {#date: date},
        ),
        returnValue: _i5.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i5.Future<List<_i8.Leave>>);
  @override
  String getNewLeaveId() => (super.noSuchMethod(
        Invocation.method(
          #getNewLeaveId,
          [],
        ),
        returnValue: '',
      ) as String);
  @override
  _i5.Future<void> applyForLeave(_i8.Leave? leaveRequestData) =>
      (super.noSuchMethod(
        Invocation.method(
          #applyForLeave,
          [leaveRequestData],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<List<_i8.Leave>> getAllLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllLeavesOfUser,
          [id],
        ),
        returnValue: _i5.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i5.Future<List<_i8.Leave>>);
  @override
  _i5.Future<List<_i8.Leave>> getRecentLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRecentLeavesOfUser,
          [id],
        ),
        returnValue: _i5.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i5.Future<List<_i8.Leave>>);
  @override
  _i5.Future<List<_i8.Leave>> getPastLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPastLeavesOfUser,
          [id],
        ),
        returnValue: _i5.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i5.Future<List<_i8.Leave>>);
  @override
  _i5.Future<List<_i8.Leave>> getRequestedLeave(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRequestedLeave,
          [id],
        ),
        returnValue: _i5.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i5.Future<List<_i8.Leave>>);
  @override
  _i5.Future<List<_i8.Leave>> getUpcomingLeavesOfUser(String? employeeId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpcomingLeavesOfUser,
          [employeeId],
        ),
        returnValue: _i5.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i5.Future<List<_i8.Leave>>);
  @override
  _i5.Future<void> deleteLeaveRequest(String? leaveId) => (super.noSuchMethod(
        Invocation.method(
          #deleteLeaveRequest,
          [leaveId],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<double> getUserUsedLeaves(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getUserUsedLeaves,
          [id],
        ),
        returnValue: _i5.Future<double>.value(0.0),
      ) as _i5.Future<double>);
  @override
  _i5.Future<void> deleteAllLeavesOfUser(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteAllLeavesOfUser,
          [id],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<_i8.Leave?> fetchLeave(String? id) => (super.noSuchMethod(
        Invocation.method(
          #fetchLeave,
          [id],
        ),
        returnValue: _i5.Future<_i8.Leave?>.value(),
      ) as _i5.Future<_i8.Leave?>);
}

/// A class which mocks [UserEmployeeDetailBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserEmployeeDetailBloc extends _i1.Mock
    implements _i9.UserEmployeeDetailBloc {
  MockUserEmployeeDetailBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.UserEmployeeDetailState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeUserEmployeeDetailState_1(
          this,
          Invocation.getter(#state),
        ),
      ) as _i3.UserEmployeeDetailState);
  @override
  _i5.Stream<_i3.UserEmployeeDetailState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i5.Stream<_i3.UserEmployeeDetailState>.empty(),
      ) as _i5.Stream<_i3.UserEmployeeDetailState>);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void add(_i10.UserEmployeeDetailEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onEvent(_i10.UserEmployeeDetailEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void emit(_i3.UserEmployeeDetailState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void on<E extends _i10.UserEmployeeDetailEvent>(
    _i11.EventHandler<E, _i3.UserEmployeeDetailState>? handler, {
    _i11.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onTransition(
          _i11.Transition<_i10.UserEmployeeDetailEvent,
                  _i3.UserEmployeeDetailState>?
              transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  void onChange(_i11.Change<_i3.UserEmployeeDetailState>? change) =>
      super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}
