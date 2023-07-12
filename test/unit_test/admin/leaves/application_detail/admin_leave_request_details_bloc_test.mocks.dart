// Mocks generated by Mockito 5.4.0 from annotations
// in projectunity/test/unit_test/admin/leaves/application_detail/admin_leave_request_details_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:ui' as _i11;

import 'package:cloud_firestore/cloud_firestore.dart' as _i2;
import 'package:http/http.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:projectunity/data/model/account/account.dart' as _i10;
import 'package:projectunity/data/model/employee/employee.dart' as _i3;
import 'package:projectunity/data/model/leave/leave.dart' as _i8;
import 'package:projectunity/data/model/space/space.dart' as _i4;
import 'package:projectunity/data/provider/user_state.dart' as _i9;
import 'package:projectunity/data/services/leave_service.dart' as _i6;
import 'package:projectunity/data/services/mail_notification_service.dart'
    as _i13;
import 'package:projectunity/data/services/space_service.dart' as _i12;

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

class _FakeSpace_2 extends _i1.SmartFake implements _i4.Space {
  _FakeSpace_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClient_3 extends _i1.SmartFake implements _i5.Client {
  _FakeClient_3(
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
class MockLeaveService extends _i1.Mock implements _i6.LeaveService {
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
  _i7.Stream<List<_i8.Leave>> get leaves => (super.noSuchMethod(
        Invocation.getter(#leaves),
        returnValue: _i7.Stream<List<_i8.Leave>>.empty(),
      ) as _i7.Stream<List<_i8.Leave>>);
  @override
  _i7.Future<List<_i8.Leave>> getLeaveRequestOfUsers() => (super.noSuchMethod(
        Invocation.method(
          #getLeaveRequestOfUsers,
          [],
        ),
        returnValue: _i7.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i7.Future<List<_i8.Leave>>);
  @override
  _i7.Future<bool> checkLeaveAlreadyApplied({
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
        returnValue: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);
  @override
  _i7.Future<List<_i8.Leave>> getRecentLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getRecentLeaves,
          [],
        ),
        returnValue: _i7.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i7.Future<List<_i8.Leave>>);
  @override
  _i7.Future<List<_i8.Leave>> getUpcomingLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getUpcomingLeaves,
          [],
        ),
        returnValue: _i7.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i7.Future<List<_i8.Leave>>);
  @override
  _i7.Future<void> updateLeaveStatus({
    required String? id,
    required _i8.LeaveStatus? status,
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
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<List<_i8.Leave>> getAllLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getAllLeaves,
          [],
        ),
        returnValue: _i7.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i7.Future<List<_i8.Leave>>);
  @override
  _i7.Future<List<_i8.Leave>> getAllApprovedLeaves() => (super.noSuchMethod(
        Invocation.method(
          #getAllApprovedLeaves,
          [],
        ),
        returnValue: _i7.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i7.Future<List<_i8.Leave>>);
  @override
  _i7.Future<List<_i8.Leave>> getAllAbsence({DateTime? date}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllAbsence,
          [],
          {#date: date},
        ),
        returnValue: _i7.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i7.Future<List<_i8.Leave>>);
  @override
  String getNewLeaveId() => (super.noSuchMethod(
        Invocation.method(
          #getNewLeaveId,
          [],
        ),
        returnValue: '',
      ) as String);
  @override
  _i7.Future<void> applyForLeave(_i8.Leave? leaveRequestData) =>
      (super.noSuchMethod(
        Invocation.method(
          #applyForLeave,
          [leaveRequestData],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<List<_i8.Leave>> getAllLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllLeavesOfUser,
          [id],
        ),
        returnValue: _i7.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i7.Future<List<_i8.Leave>>);
  @override
  _i7.Future<List<_i8.Leave>> getRecentLeavesOfUser(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRecentLeavesOfUser,
          [id],
        ),
        returnValue: _i7.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i7.Future<List<_i8.Leave>>);
  @override
  _i7.Future<List<_i8.Leave>> getRequestedLeave(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRequestedLeave,
          [id],
        ),
        returnValue: _i7.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i7.Future<List<_i8.Leave>>);
  @override
  _i7.Future<List<_i8.Leave>> getUpcomingLeavesOfUser(String? employeeId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpcomingLeavesOfUser,
          [employeeId],
        ),
        returnValue: _i7.Future<List<_i8.Leave>>.value(<_i8.Leave>[]),
      ) as _i7.Future<List<_i8.Leave>>);
  @override
  _i7.Future<void> deleteLeaveRequest(String? leaveId) => (super.noSuchMethod(
        Invocation.method(
          #deleteLeaveRequest,
          [leaveId],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<double> getUserUsedLeaves(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getUserUsedLeaves,
          [id],
        ),
        returnValue: _i7.Future<double>.value(0.0),
      ) as _i7.Future<double>);
  @override
  _i7.Future<void> deleteAllLeavesOfUser(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteAllLeavesOfUser,
          [id],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<_i8.Leave?> fetchLeave(String? leaveId) => (super.noSuchMethod(
        Invocation.method(
          #fetchLeave,
          [leaveId],
        ),
        returnValue: _i7.Future<_i8.Leave?>.value(),
      ) as _i7.Future<_i8.Leave?>);
}

/// A class which mocks [UserStateNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserStateNotifier extends _i1.Mock implements _i9.UserStateNotifier {
  MockUserStateNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.UserState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _i9.UserState.authenticated,
      ) as _i9.UserState);
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
  _i7.Future<void> setUser(_i10.Account? user) => (super.noSuchMethod(
        Invocation.method(
          #setUser,
          [user],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> setEmployeeWithSpace({
    required _i4.Space? space,
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
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> updateSpace(_i4.Space? space) => (super.noSuchMethod(
        Invocation.method(
          #updateSpace,
          [space],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> removeEmployeeWithSpace() => (super.noSuchMethod(
        Invocation.method(
          #removeEmployeeWithSpace,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> removeAll() => (super.noSuchMethod(
        Invocation.method(
          #removeAll,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
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

/// A class which mocks [SpaceService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSpaceService extends _i1.Mock implements _i12.SpaceService {
  MockSpaceService() {
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
  _i7.Future<_i4.Space?> getSpace(String? spaceId) => (super.noSuchMethod(
        Invocation.method(
          #getSpace,
          [spaceId],
        ),
        returnValue: _i7.Future<_i4.Space?>.value(),
      ) as _i7.Future<_i4.Space?>);
  @override
  _i7.Future<_i4.Space> createSpace({
    String? logo,
    required String? name,
    String? domain,
    required int? timeOff,
    required String? ownerId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createSpace,
          [],
          {
            #logo: logo,
            #name: name,
            #domain: domain,
            #timeOff: timeOff,
            #ownerId: ownerId,
          },
        ),
        returnValue: _i7.Future<_i4.Space>.value(_FakeSpace_2(
          this,
          Invocation.method(
            #createSpace,
            [],
            {
              #logo: logo,
              #name: name,
              #domain: domain,
              #timeOff: timeOff,
              #ownerId: ownerId,
            },
          ),
        )),
      ) as _i7.Future<_i4.Space>);
  @override
  _i7.Future<void> updateSpace(_i4.Space? space) => (super.noSuchMethod(
        Invocation.method(
          #updateSpace,
          [space],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> deleteSpace({
    required String? spaceId,
    required List<String>? owners,
    required String? uid,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteSpace,
          [],
          {
            #spaceId: spaceId,
            #owners: owners,
            #uid: uid,
          },
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<List<_i4.Space>> getSpacesOfUser(String? uid) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSpacesOfUser,
          [uid],
        ),
        returnValue: _i7.Future<List<_i4.Space>>.value(<_i4.Space>[]),
      ) as _i7.Future<List<_i4.Space>>);
  @override
  _i7.Future<int> getPaidLeaves({required String? spaceId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPaidLeaves,
          [],
          {#spaceId: spaceId},
        ),
        returnValue: _i7.Future<int>.value(0),
      ) as _i7.Future<int>);
  @override
  _i7.Future<void> updateLeaveCount({
    required String? spaceId,
    required int? paidLeaveCount,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateLeaveCount,
          [],
          {
            #spaceId: spaceId,
            #paidLeaveCount: paidLeaveCount,
          },
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

/// A class which mocks [NotificationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNotificationService extends _i1.Mock
    implements _i13.NotificationService {
  MockNotificationService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Client get httpClient => (super.noSuchMethod(
        Invocation.getter(#httpClient),
        returnValue: _FakeClient_3(
          this,
          Invocation.getter(#httpClient),
        ),
      ) as _i5.Client);
  @override
  _i7.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> notifyHRForNewLeave({
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
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> leaveResponse({
    required String? name,
    required DateTime? startDate,
    required DateTime? endDate,
    required _i8.LeaveStatus? status,
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
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
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
  _i7.Future<void> sendInviteNotification({
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
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> sendSpaceInviteAcceptNotification({
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
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}
