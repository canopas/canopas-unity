// Mocks generated by Mockito 5.4.0 from annotations
// in projectunity/test/unit_test/shared/profile/view_profile/view_profile_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:ui' as _i8;

import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:projectunity/data/model/account/account.dart' as _i6;
import 'package:projectunity/data/model/employee/employee.dart' as _i2;
import 'package:projectunity/data/model/space/space.dart' as _i7;
import 'package:projectunity/data/provider/user_state.dart' as _i4;
import 'package:projectunity/data/services/employee_service.dart' as _i9;

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

class _FakeFirebaseFirestore_1 extends _i1.SmartFake
    implements _i3.FirebaseFirestore {
  _FakeFirebaseFirestore_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UserStateNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserStateNotifier extends _i1.Mock implements _i4.UserStateNotifier {
  MockUserStateNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.UserState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _i4.UserState.authenticated,
      ) as _i4.UserState);
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
  bool get isAdmin => (super.noSuchMethod(
        Invocation.getter(#isAdmin),
        returnValue: false,
      ) as bool);
  @override
  bool get isSpaceOwner => (super.noSuchMethod(
        Invocation.getter(#isSpaceOwner),
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
  void getUserStatus() => super.noSuchMethod(
        Invocation.method(
          #getUserStatus,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<void> setUser(_i6.Account? user) => (super.noSuchMethod(
        Invocation.method(
          #setUser,
          [user],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> setEmployeeWithSpace({
    required _i7.Space? space,
    required _i2.Employee? spaceUser,
    bool? redirect = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setEmployeeWithSpace,
          [],
          {
            #space: space,
            #spaceUser: spaceUser,
            #redirect: redirect,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> updateSpace(_i7.Space? space) => (super.noSuchMethod(
        Invocation.method(
          #updateSpace,
          [space],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> removeEmployeeWithSpace() => (super.noSuchMethod(
        Invocation.method(
          #removeEmployeeWithSpace,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> removeAll() => (super.noSuchMethod(
        Invocation.method(
          #removeAll,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  void addListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i8.VoidCallback? listener) => super.noSuchMethod(
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

/// A class which mocks [EmployeeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockEmployeeService extends _i1.Mock implements _i9.EmployeeService {
  MockEmployeeService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.FirebaseFirestore get fireStore => (super.noSuchMethod(
        Invocation.getter(#fireStore),
        returnValue: _FakeFirebaseFirestore_1(
          this,
          Invocation.getter(#fireStore),
        ),
      ) as _i3.FirebaseFirestore);
  @override
  _i5.Future<void> addEmployeeBySpaceId({
    required _i2.Employee? employee,
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
  _i5.Future<_i2.Employee?> getEmployeeBySpaceId({
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
        returnValue: _i5.Future<_i2.Employee?>.value(),
      ) as _i5.Future<_i2.Employee?>);
  @override
  _i5.Future<List<_i2.Employee>> getEmployees() => (super.noSuchMethod(
        Invocation.method(
          #getEmployees,
          [],
        ),
        returnValue: _i5.Future<List<_i2.Employee>>.value(<_i2.Employee>[]),
      ) as _i5.Future<List<_i2.Employee>>);
  @override
  _i5.Future<_i2.Employee?> getEmployee(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getEmployee,
          [id],
        ),
        returnValue: _i5.Future<_i2.Employee?>.value(),
      ) as _i5.Future<_i2.Employee?>);
  @override
  _i5.Future<bool> hasUser(String? email) => (super.noSuchMethod(
        Invocation.method(
          #hasUser,
          [email],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<void> addEmployee(_i2.Employee? employee) => (super.noSuchMethod(
        Invocation.method(
          #addEmployee,
          [employee],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> updateEmployeeDetails({required _i2.Employee? employee}) =>
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
    _i2.Role? role,
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
