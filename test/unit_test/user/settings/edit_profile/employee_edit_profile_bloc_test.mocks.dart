// Mocks generated by Mockito 5.3.2 from annotations
// in projectunity/test/unit_test/user/settings/edit_profile/employee_edit_profile_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:ui' as _i6;

import 'package:mockito/mockito.dart' as _i1;
import 'package:projectunity/model/employee/employee.dart' as _i2;
import 'package:projectunity/pref/user_preference.dart' as _i7;
import 'package:projectunity/provider/user_data.dart' as _i5;
import 'package:projectunity/services/employee_service.dart' as _i3;

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

class _FakeEmployee_0 extends _i1.SmartFake implements _i2.Employee {
  _FakeEmployee_0(
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
class MockEmployeeService extends _i1.Mock implements _i3.EmployeeService {
  MockEmployeeService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<List<_i2.Employee>> get employees => (super.noSuchMethod(
        Invocation.getter(#employees),
        returnValue: _i4.Stream<List<_i2.Employee>>.empty(),
      ) as _i4.Stream<List<_i2.Employee>>);
  @override
  void fetchEmployees() => super.noSuchMethod(
        Invocation.method(
          #fetchEmployees,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<List<_i2.Employee>> getEmployees() => (super.noSuchMethod(
        Invocation.method(
          #getEmployees,
          [],
        ),
        returnValue: _i4.Future<List<_i2.Employee>>.value(<_i2.Employee>[]),
      ) as _i4.Future<List<_i2.Employee>>);
  @override
  _i4.Future<_i2.Employee?> getEmployee(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getEmployee,
          [id],
        ),
        returnValue: _i4.Future<_i2.Employee?>.value(),
      ) as _i4.Future<_i2.Employee?>);
  @override
  _i4.Future<bool> hasUser(String? email) => (super.noSuchMethod(
        Invocation.method(
          #hasUser,
          [email],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<void> addEmployee(_i2.Employee? employee) => (super.noSuchMethod(
        Invocation.method(
          #addEmployee,
          [employee],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> updateEmployeeDetails({required _i2.Employee? employee}) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateEmployeeDetails,
          [],
          {#employee: employee},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> changeEmployeeRoleType(
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
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> deleteEmployee(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteEmployee,
          [id],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [UserManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserManager extends _i1.Mock implements _i5.UserManager {
  MockUserManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get loggedIn => (super.noSuchMethod(
        Invocation.getter(#loggedIn),
        returnValue: false,
      ) as bool);
  @override
  set loggedIn(bool? _loggedIn) => super.noSuchMethod(
        Invocation.setter(
          #loggedIn,
          _loggedIn,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get userName => (super.noSuchMethod(
        Invocation.getter(#userName),
        returnValue: '',
      ) as String);
  @override
  String get email => (super.noSuchMethod(
        Invocation.getter(#email),
        returnValue: '',
      ) as String);
  @override
  String get employeeId => (super.noSuchMethod(
        Invocation.getter(#employeeId),
        returnValue: '',
      ) as String);
  @override
  _i2.Employee get employee => (super.noSuchMethod(
        Invocation.getter(#employee),
        returnValue: _FakeEmployee_0(
          this,
          Invocation.getter(#employee),
        ),
      ) as _i2.Employee);
  @override
  String get employeeDesignation => (super.noSuchMethod(
        Invocation.getter(#employeeDesignation),
        returnValue: '',
      ) as String);
  @override
  bool get isAdmin => (super.noSuchMethod(
        Invocation.getter(#isAdmin),
        returnValue: false,
      ) as bool);
  @override
  bool get isHR => (super.noSuchMethod(
        Invocation.getter(#isHR),
        returnValue: false,
      ) as bool);
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);
  @override
  void hasLoggedIn() => super.noSuchMethod(
        Invocation.method(
          #hasLoggedIn,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [UserPreference].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserPreference extends _i1.Mock implements _i7.UserPreference {
  MockUserPreference() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void setCurrentUser(_i2.Employee? user) => super.noSuchMethod(
        Invocation.method(
          #setCurrentUser,
          [user],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<void> removeCurrentUser() => (super.noSuchMethod(
        Invocation.method(
          #removeCurrentUser,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> setToken(String? token) => (super.noSuchMethod(
        Invocation.method(
          #setToken,
          [token],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
