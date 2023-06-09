// Mocks generated by Mockito 5.4.0 from annotations
// in projectunity/test/unit_test/user/leaves/apply_leave/apply_leave_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:ui' as _i11;

import 'package:cloud_firestore/cloud_firestore.dart' as _i2;
import 'package:http/http.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:projectunity/data/model/account/account.dart' as _i9;
import 'package:projectunity/data/model/employee/employee.dart' as _i3;
import 'package:projectunity/data/model/leave/leave.dart' as _i7;
import 'package:projectunity/data/model/space/space.dart' as _i10;
import 'package:projectunity/data/provider/user_state.dart' as _i8;
import 'package:projectunity/data/services/leave_service.dart' as _i5;
import 'package:projectunity/data/services/mail_notification_service.dart'
    as _i12;

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

class _FakeEmployee_1 extends _i1.SmartFake implements _i3.Employee {
  _FakeEmployee_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClient_2 extends _i1.SmartFake implements _i4.Client {
  _FakeClient_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LeaveService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLeaveService extends _i1.Mock implements _i5.LeaveService {
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
  _i6.Stream<List<_i7.Leave>> get leaves => (super.noSuchMethod(
        Invocation.getter(#leaves),
        returnValue: _i6.Stream<List<_i7.Leave>>.empty(),
      ) as _i6.Stream<List<_i7.Leave>>);
  @override
  _i6.Future<List<_i7.Leave>> getLeaveRequestOfUsers() => (super.noSuchMethod(
        Invocation.method(
          #getLeaveRequestOfUsers,
          [],
        ),
        returnValue: _i6.Future<List<_i7.Leave>>.value(<_i7.Leave>[]),
      ) as _i6.Future<List<_i7.Leave>>);
  @override
  _i6.Future<bool> checkLeaveAlreadyApplied({
    required String? userId,
    required Map<DateTime, _i7.LeaveDayDuration>? dateDuration,
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
  _i6.Future<List<_i7.Leave>> getRecentLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getRecentLeaves,
          [],
        ),
        returnValue: _i6.Future<List<_i7.Leave>>.value(<_i7.Leave>[]),
      ) as _i6.Future<List<_i7.Leave>>);
  @override
  _i6.Future<List<_i7.Leave>> getUpcomingLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getUpcomingLeaves,
          [],
        ),
        returnValue: _i6.Future<List<_i7.Leave>>.value(<_i7.Leave>[]),
      ) as _i6.Future<List<_i7.Leave>>);
  @override
  _i6.Future<void> updateLeaveStatus({
    required String? id,
    required _i7.LeaveStatus? status,
    String? response = r'',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateLeaveStatus,
          [],
          {
            #id: id,
            #status: status,
            #response: response,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i7.Leave>> getAllLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getAllLeaves,
          [],
        ),
        returnValue: _i6.Future<List<_i7.Leave>>.value(<_i7.Leave>[]),
      ) as _i6.Future<List<_i7.Leave>>);
  @override
  _i6.Future<List<_i7.Leave>> getAllApprovedLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getAllApprovedLeaves,
          [],
        ),
        returnValue: _i6.Future<List<_i7.Leave>>.value(<_i7.Leave>[]),
      ) as _i6.Future<List<_i7.Leave>>);
  @override
  _i6.Future<List<_i7.Leave>> getAllAbsence({DateTime? date}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllAbsence,
          [],
          {#date: date},
        ),
        returnValue: _i6.Future<List<_i7.Leave>>.value(<_i7.Leave>[]),
      ) as _i6.Future<List<_i7.Leave>>);
  @override
  String getNewLeaveId() => (super.noSuchMethod(
        Invocation.method(
          #getNewLeaveId,
          [],
        ),
        returnValue: '',
      ) as String);
  @override
  _i6.Future<void> applyForLeave(_i7.Leave? leaveRequestData) =>
      (super.noSuchMethod(
        Invocation.method(
          #applyForLeave,
          [leaveRequestData],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i7.Leave>> getAllLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllLeavesOfUser,
          [id],
        ),
        returnValue: _i6.Future<List<_i7.Leave>>.value(<_i7.Leave>[]),
      ) as _i6.Future<List<_i7.Leave>>);
  @override
  _i6.Future<List<_i7.Leave>> getRecentLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRecentLeavesOfUser,
          [id],
        ),
        returnValue: _i6.Future<List<_i7.Leave>>.value(<_i7.Leave>[]),
      ) as _i6.Future<List<_i7.Leave>>);
  @override
  _i6.Future<List<_i7.Leave>> getRequestedLeave(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRequestedLeave,
          [id],
        ),
        returnValue: _i6.Future<List<_i7.Leave>>.value(<_i7.Leave>[]),
      ) as _i6.Future<List<_i7.Leave>>);
  @override
  _i6.Future<List<_i7.Leave>> getUpcomingLeavesOfUser(String? employeeId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpcomingLeavesOfUser,
          [employeeId],
        ),
        returnValue: _i6.Future<List<_i7.Leave>>.value(<_i7.Leave>[]),
      ) as _i6.Future<List<_i7.Leave>>);
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
  _i6.Future<_i7.Leave?> fetchLeave(String? leaveId) => (super.noSuchMethod(
        Invocation.method(
          #fetchLeave,
          [leaveId],
        ),
        returnValue: _i6.Future<_i7.Leave?>.value(),
      ) as _i6.Future<_i7.Leave?>);
}

/// A class which mocks [UserStateNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserStateNotifier extends _i1.Mock implements _i8.UserStateNotifier {
  MockUserStateNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.UserState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _i8.UserState.authenticated,
      ) as _i8.UserState);
  @override
  String get employeeId => (super.noSuchMethod(
        Invocation.getter(#employeeId),
        returnValue: '',
      ) as String);
  @override
  _i3.Employee get employee => (super.noSuchMethod(
        Invocation.getter(#employee),
        returnValue: _FakeEmployee_1(
          this,
          Invocation.getter(#employee),
        ),
      ) as _i3.Employee);
  @override
  bool get isAdmin => (super.noSuchMethod(
        Invocation.getter(#isAdmin),
        returnValue: false,
      ) as bool);
  @override
  bool get isEmployee => (super.noSuchMethod(
        Invocation.getter(#isEmployee),
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
  _i6.Future<void> setUser(_i9.Account? user) => (super.noSuchMethod(
        Invocation.method(
          #setUser,
          [user],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> setEmployeeWithSpace({
    required _i10.Space? space,
    required _i3.Employee? spaceUser,
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
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> updateSpace(_i10.Space? space) => (super.noSuchMethod(
        Invocation.method(
          #updateSpace,
          [space],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> removeEmployeeWithSpace() => (super.noSuchMethod(
        Invocation.method(
          #removeEmployeeWithSpace,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> removeAll() => (super.noSuchMethod(
        Invocation.method(
          #removeAll,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  void addListener(_i11.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i11.VoidCallback? listener) => super.noSuchMethod(
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

/// A class which mocks [NotificationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNotificationService extends _i1.Mock
    implements _i12.NotificationService {
  MockNotificationService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Client get httpClient => (super.noSuchMethod(
        Invocation.getter(#httpClient),
        returnValue: _FakeClient_2(
          this,
          Invocation.getter(#httpClient),
        ),
      ) as _i4.Client);
  @override
  _i6.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> notifyHRForNewLeave({
    required String? name,
    required String? reason,
    required DateTime? startDate,
    required DateTime? endDate,
    required String? receiver,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #notifyHRForNewLeave,
          [],
          {
            #name: name,
            #reason: reason,
            #startDate: startDate,
            #endDate: endDate,
            #receiver: receiver,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> leaveResponse({
    required String? name,
    required DateTime? startDate,
    required DateTime? endDate,
    required _i7.LeaveStatus? status,
    required String? receiver,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #leaveResponse,
          [],
          {
            #name: name,
            #startDate: startDate,
            #endDate: endDate,
            #status: status,
            #receiver: receiver,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  String getFormatDate({
    required DateTime? startDate,
    required DateTime? endDate,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFormatDate,
          [],
          {
            #startDate: startDate,
            #endDate: endDate,
          },
        ),
        returnValue: '',
      ) as String);
  @override
  _i6.Future<void> sendInviteNotification({
    required String? companyName,
    required String? receiver,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendInviteNotification,
          [],
          {
            #companyName: companyName,
            #receiver: receiver,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> sendSpaceInviteAcceptNotification({
    required String? sender,
    required String? receiver,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendSpaceInviteAcceptNotification,
          [],
          {
            #sender: sender,
            #receiver: receiver,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}
