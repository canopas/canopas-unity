// Mocks generated by Mockito 5.3.2 from annotations
// in projectunity/test/unit_test/user/home/home_screen/user_home_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:ui' as _i4;

import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;
import 'package:projectunity/data/model/employee/employee.dart' as _i2;
import 'package:projectunity/data/model/leave/leave.dart' as _i10;
import 'package:projectunity/data/pref/user_preference.dart' as _i8;
import 'package:projectunity/data/provider/user_data.dart' as _i3;
import 'package:projectunity/data/services/auth_service.dart' as _i5;
import 'package:projectunity/data/services/leave_service.dart' as _i9;

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

/// A class which mocks [UserManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserManager extends _i1.Mock implements _i3.UserManager {
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
  int get spacePath => (super.noSuchMethod(
        Invocation.getter(#spacePath),
        returnValue: 0,
      ) as int);
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
  void changeSpacePath(int? status) => super.noSuchMethod(
        Invocation.method(
          #changeSpacePath,
          [status],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void hasLoggedIn() => super.noSuchMethod(
        Invocation.method(
          #hasLoggedIn,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(_i4.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i4.VoidCallback? listener) => super.noSuchMethod(
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

/// A class which mocks [AuthService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthService extends _i1.Mock implements _i5.AuthService {
  MockAuthService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void updateUserData(
    _i2.Employee? user,
    _i2.Session? session,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #updateUserData,
          [
            user,
            session,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<_i2.Employee?> getUserData(String? email) => (super.noSuchMethod(
        Invocation.method(
          #getUserData,
          [email],
        ),
        returnValue: _i6.Future<_i2.Employee?>.value(),
      ) as _i6.Future<_i2.Employee?>);
  @override
  _i6.Future<_i7.User?> signInWithGoogle() => (super.noSuchMethod(
        Invocation.method(
          #signInWithGoogle,
          [],
        ),
        returnValue: _i6.Future<_i7.User?>.value(),
      ) as _i6.Future<_i7.User?>);
  @override
  _i6.Future<bool> signOutWithGoogle() => (super.noSuchMethod(
        Invocation.method(
          #signOutWithGoogle,
          [],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [UserPreference].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserPreference extends _i1.Mock implements _i8.UserPreference {
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
  void setAuthenticationStatus(_i7.User? user) => super.noSuchMethod(
        Invocation.method(
          #setAuthenticationStatus,
          [user],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void setUserSpaceStatus(int? status) => super.noSuchMethod(
        Invocation.method(
          #setUserSpaceStatus,
          [status],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<void> removeCurrentUser() => (super.noSuchMethod(
        Invocation.method(
          #removeCurrentUser,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> setToken(String? token) => (super.noSuchMethod(
        Invocation.method(
          #setToken,
          [token],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [LeaveService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLeaveService extends _i1.Mock implements _i9.LeaveService {
  MockLeaveService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Stream<List<_i10.Leave>> get leaves => (super.noSuchMethod(
        Invocation.getter(#leaves),
        returnValue: _i6.Stream<List<_i10.Leave>>.empty(),
      ) as _i6.Stream<List<_i10.Leave>>);
  @override
  void fetchLeaves() => super.noSuchMethod(
        Invocation.method(
          #fetchLeaves,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<bool> checkLeaveAlreadyApplied({
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
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
  @override
  _i6.Future<List<_i10.Leave>> getRecentLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getRecentLeaves,
          [],
        ),
        returnValue: _i6.Future<List<_i10.Leave>>.value(<_i10.Leave>[]),
      ) as _i6.Future<List<_i10.Leave>>);
  @override
  _i6.Future<List<_i10.Leave>> getUpcomingLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getUpcomingLeaves,
          [],
        ),
        returnValue: _i6.Future<List<_i10.Leave>>.value(<_i10.Leave>[]),
      ) as _i6.Future<List<_i10.Leave>>);
  @override
  _i6.Future<void> updateLeaveStatus(
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
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i10.Leave>> getAllLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getAllLeaves,
          [],
        ),
        returnValue: _i6.Future<List<_i10.Leave>>.value(<_i10.Leave>[]),
      ) as _i6.Future<List<_i10.Leave>>);
  @override
  _i6.Future<List<_i10.Leave>> getAllAbsence({DateTime? date}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllAbsence,
          [],
          {#date: date},
        ),
        returnValue: _i6.Future<List<_i10.Leave>>.value(<_i10.Leave>[]),
      ) as _i6.Future<List<_i10.Leave>>);
  @override
  _i6.Future<void> applyForLeave(_i10.Leave? leaveRequestData) =>
      (super.noSuchMethod(
        Invocation.method(
          #applyForLeave,
          [leaveRequestData],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i10.Leave>> getAllLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllLeavesOfUser,
          [id],
        ),
        returnValue: _i6.Future<List<_i10.Leave>>.value(<_i10.Leave>[]),
      ) as _i6.Future<List<_i10.Leave>>);
  @override
  _i6.Future<List<_i10.Leave>> getRecentLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRecentLeavesOfUser,
          [id],
        ),
        returnValue: _i6.Future<List<_i10.Leave>>.value(<_i10.Leave>[]),
      ) as _i6.Future<List<_i10.Leave>>);
  @override
  _i6.Future<List<_i10.Leave>> getPastLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPastLeavesOfUser,
          [id],
        ),
        returnValue: _i6.Future<List<_i10.Leave>>.value(<_i10.Leave>[]),
      ) as _i6.Future<List<_i10.Leave>>);
  @override
  _i6.Future<List<_i10.Leave>> getRequestedLeave(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRequestedLeave,
          [id],
        ),
        returnValue: _i6.Future<List<_i10.Leave>>.value(<_i10.Leave>[]),
      ) as _i6.Future<List<_i10.Leave>>);
  @override
  _i6.Future<List<_i10.Leave>> getUpcomingLeavesOfUser(String? employeeId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpcomingLeavesOfUser,
          [employeeId],
        ),
        returnValue: _i6.Future<List<_i10.Leave>>.value(<_i10.Leave>[]),
      ) as _i6.Future<List<_i10.Leave>>);
  @override
  _i6.Future<void> deleteLeaveRequest(String? leaveId) => (super.noSuchMethod(
        Invocation.method(
          #deleteLeaveRequest,
          [leaveId],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<double> getUserUsedLeaves(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getUserUsedLeaves,
          [id],
        ),
        returnValue: _i6.Future<double>.value(0.0),
      ) as _i6.Future<double>);
  @override
  _i6.Future<void> deleteAllLeavesOfUser(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteAllLeavesOfUser,
          [id],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<_i10.Leave?> fetchLeave(String? id) => (super.noSuchMethod(
        Invocation.method(
          #fetchLeave,
          [id],
        ),
        returnValue: _i6.Future<_i10.Leave?>.value(),
      ) as _i6.Future<_i10.Leave?>);
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
