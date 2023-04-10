// Mocks generated by Mockito 5.3.2 from annotations
// in projectunity/test/unit_test/authentication/login/login_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:ui' as _i9;

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart'
    as _i10;
import 'package:mockito/mockito.dart' as _i1;
import 'package:projectunity/data/model/employee/employee.dart' as _i3;
import 'package:projectunity/data/model/space/space.dart' as _i8;
import 'package:projectunity/data/model/user/user.dart' as _i2;
import 'package:projectunity/data/provider/user_data.dart' as _i7;
import 'package:projectunity/data/services/auth_service.dart' as _i5;

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

class _FakeUser_0 extends _i1.SmartFake implements _i2.User {
  _FakeUser_0(
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

class _FakeUserMetadata_2 extends _i1.SmartFake implements _i4.UserMetadata {
  _FakeUserMetadata_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMultiFactor_3 extends _i1.SmartFake implements _i4.MultiFactor {
  _FakeMultiFactor_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIdTokenResult_4 extends _i1.SmartFake implements _i4.IdTokenResult {
  _FakeIdTokenResult_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserCredential_5 extends _i1.SmartFake
    implements _i4.UserCredential {
  _FakeUserCredential_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeConfirmationResult_6 extends _i1.SmartFake
    implements _i4.ConfirmationResult {
  _FakeConfirmationResult_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUser_7 extends _i1.SmartFake implements _i4.User {
  _FakeUser_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
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
  _i6.Future<_i2.User> getUser(_i4.User? authData) => (super.noSuchMethod(
        Invocation.method(
          #getUser,
          [authData],
        ),
        returnValue: _i6.Future<_i2.User>.value(_FakeUser_0(
          this,
          Invocation.method(
            #getUser,
            [authData],
          ),
        )),
      ) as _i6.Future<_i2.User>);
  @override
  _i6.Future<_i4.User?> signInWithGoogle() => (super.noSuchMethod(
        Invocation.method(
          #signInWithGoogle,
          [],
        ),
        returnValue: _i6.Future<_i4.User?>.value(),
      ) as _i6.Future<_i4.User?>);
  @override
  _i6.Future<bool> signOutWithGoogle() => (super.noSuchMethod(
        Invocation.method(
          #signOutWithGoogle,
          [],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [UserManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserManager extends _i1.Mock implements _i7.UserManager {
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
  bool get spaceSelected => (super.noSuchMethod(
        Invocation.getter(#spaceSelected),
        returnValue: false,
      ) as bool);
  @override
  set spaceSelected(bool? _spaceSelected) => super.noSuchMethod(
        Invocation.setter(
          #spaceSelected,
          _spaceSelected,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get spaceUserExist => (super.noSuchMethod(
        Invocation.getter(#spaceUserExist),
        returnValue: false,
      ) as bool);
  @override
  set spaceUserExist(bool? _spaceUserExist) => super.noSuchMethod(
        Invocation.setter(
          #spaceUserExist,
          _spaceUserExist,
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
  _i3.Employee get employee => (super.noSuchMethod(
        Invocation.getter(#employee),
        returnValue: _FakeEmployee_1(
          this,
          Invocation.getter(#employee),
        ),
      ) as _i3.Employee);
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
  _i6.Future<void> setUser(_i2.User? user) => (super.noSuchMethod(
        Invocation.method(
          #setUser,
          [user],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> setSpace({
    required _i8.Space? space,
    required _i3.Employee? admin,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setSpace,
          [],
          {
            #space: space,
            #admin: admin,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> removeSpace() => (super.noSuchMethod(
        Invocation.method(
          #removeSpace,
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
  void hasLoggedIn() => super.noSuchMethod(
        Invocation.method(
          #hasLoggedIn,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(_i9.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i9.VoidCallback? listener) => super.noSuchMethod(
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

/// A class which mocks [User].
///
/// See the documentation for Mockito's code generation for more information.
class MockUser extends _i1.Mock implements _i4.User {
  MockUser() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get emailVerified => (super.noSuchMethod(
        Invocation.getter(#emailVerified),
        returnValue: false,
      ) as bool);
  @override
  bool get isAnonymous => (super.noSuchMethod(
        Invocation.getter(#isAnonymous),
        returnValue: false,
      ) as bool);
  @override
  _i4.UserMetadata get metadata => (super.noSuchMethod(
        Invocation.getter(#metadata),
        returnValue: _FakeUserMetadata_2(
          this,
          Invocation.getter(#metadata),
        ),
      ) as _i4.UserMetadata);
  @override
  List<_i4.UserInfo> get providerData => (super.noSuchMethod(
        Invocation.getter(#providerData),
        returnValue: <_i4.UserInfo>[],
      ) as List<_i4.UserInfo>);
  @override
  String get uid => (super.noSuchMethod(
        Invocation.getter(#uid),
        returnValue: '',
      ) as String);
  @override
  _i4.MultiFactor get multiFactor => (super.noSuchMethod(
        Invocation.getter(#multiFactor),
        returnValue: _FakeMultiFactor_3(
          this,
          Invocation.getter(#multiFactor),
        ),
      ) as _i4.MultiFactor);
  @override
  _i6.Future<void> delete() => (super.noSuchMethod(
        Invocation.method(
          #delete,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<String> getIdToken([bool? forceRefresh = false]) =>
      (super.noSuchMethod(
        Invocation.method(
          #getIdToken,
          [forceRefresh],
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<_i4.IdTokenResult> getIdTokenResult(
          [bool? forceRefresh = false]) =>
      (super.noSuchMethod(
        Invocation.method(
          #getIdTokenResult,
          [forceRefresh],
        ),
        returnValue: _i6.Future<_i4.IdTokenResult>.value(_FakeIdTokenResult_4(
          this,
          Invocation.method(
            #getIdTokenResult,
            [forceRefresh],
          ),
        )),
      ) as _i6.Future<_i4.IdTokenResult>);
  @override
  _i6.Future<_i4.UserCredential> linkWithCredential(
          _i4.AuthCredential? credential) =>
      (super.noSuchMethod(
        Invocation.method(
          #linkWithCredential,
          [credential],
        ),
        returnValue: _i6.Future<_i4.UserCredential>.value(_FakeUserCredential_5(
          this,
          Invocation.method(
            #linkWithCredential,
            [credential],
          ),
        )),
      ) as _i6.Future<_i4.UserCredential>);
  @override
  _i6.Future<_i4.UserCredential> linkWithProvider(
          _i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #linkWithProvider,
          [provider],
        ),
        returnValue: _i6.Future<_i4.UserCredential>.value(_FakeUserCredential_5(
          this,
          Invocation.method(
            #linkWithProvider,
            [provider],
          ),
        )),
      ) as _i6.Future<_i4.UserCredential>);
  @override
  _i6.Future<_i4.UserCredential> reauthenticateWithProvider(
          _i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #reauthenticateWithProvider,
          [provider],
        ),
        returnValue: _i6.Future<_i4.UserCredential>.value(_FakeUserCredential_5(
          this,
          Invocation.method(
            #reauthenticateWithProvider,
            [provider],
          ),
        )),
      ) as _i6.Future<_i4.UserCredential>);
  @override
  _i6.Future<_i4.UserCredential> reauthenticateWithPopup(
          _i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #reauthenticateWithPopup,
          [provider],
        ),
        returnValue: _i6.Future<_i4.UserCredential>.value(_FakeUserCredential_5(
          this,
          Invocation.method(
            #reauthenticateWithPopup,
            [provider],
          ),
        )),
      ) as _i6.Future<_i4.UserCredential>);
  @override
  _i6.Future<void> reauthenticateWithRedirect(_i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #reauthenticateWithRedirect,
          [provider],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<_i4.UserCredential> linkWithPopup(_i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #linkWithPopup,
          [provider],
        ),
        returnValue: _i6.Future<_i4.UserCredential>.value(_FakeUserCredential_5(
          this,
          Invocation.method(
            #linkWithPopup,
            [provider],
          ),
        )),
      ) as _i6.Future<_i4.UserCredential>);
  @override
  _i6.Future<void> linkWithRedirect(_i10.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #linkWithRedirect,
          [provider],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<_i4.ConfirmationResult> linkWithPhoneNumber(
    String? phoneNumber, [
    _i4.RecaptchaVerifier? verifier,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #linkWithPhoneNumber,
          [
            phoneNumber,
            verifier,
          ],
        ),
        returnValue:
            _i6.Future<_i4.ConfirmationResult>.value(_FakeConfirmationResult_6(
          this,
          Invocation.method(
            #linkWithPhoneNumber,
            [
              phoneNumber,
              verifier,
            ],
          ),
        )),
      ) as _i6.Future<_i4.ConfirmationResult>);
  @override
  _i6.Future<_i4.UserCredential> reauthenticateWithCredential(
          _i4.AuthCredential? credential) =>
      (super.noSuchMethod(
        Invocation.method(
          #reauthenticateWithCredential,
          [credential],
        ),
        returnValue: _i6.Future<_i4.UserCredential>.value(_FakeUserCredential_5(
          this,
          Invocation.method(
            #reauthenticateWithCredential,
            [credential],
          ),
        )),
      ) as _i6.Future<_i4.UserCredential>);
  @override
  _i6.Future<void> reload() => (super.noSuchMethod(
        Invocation.method(
          #reload,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> sendEmailVerification(
          [_i4.ActionCodeSettings? actionCodeSettings]) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendEmailVerification,
          [actionCodeSettings],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<_i4.User> unlink(String? providerId) => (super.noSuchMethod(
        Invocation.method(
          #unlink,
          [providerId],
        ),
        returnValue: _i6.Future<_i4.User>.value(_FakeUser_7(
          this,
          Invocation.method(
            #unlink,
            [providerId],
          ),
        )),
      ) as _i6.Future<_i4.User>);
  @override
  _i6.Future<void> updateEmail(String? newEmail) => (super.noSuchMethod(
        Invocation.method(
          #updateEmail,
          [newEmail],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> updatePassword(String? newPassword) => (super.noSuchMethod(
        Invocation.method(
          #updatePassword,
          [newPassword],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> updatePhoneNumber(
          _i4.PhoneAuthCredential? phoneCredential) =>
      (super.noSuchMethod(
        Invocation.method(
          #updatePhoneNumber,
          [phoneCredential],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> updateDisplayName(String? displayName) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateDisplayName,
          [displayName],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> updatePhotoURL(String? photoURL) => (super.noSuchMethod(
        Invocation.method(
          #updatePhotoURL,
          [photoURL],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> updateProfile({
    String? displayName,
    String? photoURL,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateProfile,
          [],
          {
            #displayName: displayName,
            #photoURL: photoURL,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> verifyBeforeUpdateEmail(
    String? newEmail, [
    _i4.ActionCodeSettings? actionCodeSettings,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyBeforeUpdateEmail,
          [
            newEmail,
            actionCodeSettings,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}
