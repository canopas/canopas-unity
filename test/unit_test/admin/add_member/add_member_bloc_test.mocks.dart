// Mocks generated by Mockito 5.3.2 from annotations
// in projectunity/test/unit_test/admin/add_member/add_member_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:ui' as _i7;

import 'package:mockito/mockito.dart' as _i1;
import 'package:projectunity/model/employee/employee.dart' as _i5;
import 'package:projectunity/navigation/nav_stack/nav_stack_item.dart' as _i2;
import 'package:projectunity/navigation/navigation_stack_manager.dart' as _i6;
import 'package:projectunity/services/admin/employee/employee_service.dart'
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

class _FakeNavStackItem_0 extends _i1.SmartFake implements _i2.NavStackItem {
  _FakeNavStackItem_0(
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
  _i4.Stream<List<_i5.Employee>> get getEmployeeStream => (super.noSuchMethod(
        Invocation.getter(#getEmployeeStream),
        returnValue: _i4.Stream<List<_i5.Employee>>.empty(),
      ) as _i4.Stream<List<_i5.Employee>>);
  @override
  _i4.Future<List<_i5.Employee>> getEmployees() => (super.noSuchMethod(
        Invocation.method(
          #getEmployees,
          [],
        ),
        returnValue: _i4.Future<List<_i5.Employee>>.value(<_i5.Employee>[]),
      ) as _i4.Future<List<_i5.Employee>>);
  @override
  _i4.Future<_i5.Employee?> getEmployee(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getEmployee,
          [id],
        ),
        returnValue: _i4.Future<_i5.Employee?>.value(),
      ) as _i4.Future<_i5.Employee?>);
  @override
  _i4.Future<bool> hasUser(String? email) => (super.noSuchMethod(
        Invocation.method(
          #hasUser,
          [email],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
  @override
  _i4.Future<void> addEmployee(_i5.Employee? employee) => (super.noSuchMethod(
        Invocation.method(
          #addEmployee,
          [employee],
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

/// A class which mocks [NavigationStackManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationStackManager extends _i1.Mock
    implements _i6.NavigationStackManager {
  MockNavigationStackManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i2.NavStackItem> get pages => (super.noSuchMethod(
        Invocation.getter(#pages),
        returnValue: <_i2.NavStackItem>[],
      ) as List<_i2.NavStackItem>);
  @override
  _i2.NavStackItem get currentState => (super.noSuchMethod(
        Invocation.getter(#currentState),
        returnValue: _FakeNavStackItem_0(
          this,
          Invocation.getter(#currentState),
        ),
      ) as _i2.NavStackItem);
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);
  @override
  void updateStack(List<_i2.NavStackItem>? newItems) => super.noSuchMethod(
        Invocation.method(
          #updateStack,
          [newItems],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void push(_i2.NavStackItem? item) => super.noSuchMethod(
        Invocation.method(
          #push,
          [item],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void clearAndPush(_i2.NavStackItem? item) => super.noSuchMethod(
        Invocation.method(
          #clearAndPush,
          [item],
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
  bool canPop() => (super.noSuchMethod(
        Invocation.method(
          #canPop,
          [],
        ),
        returnValue: false,
      ) as bool);
  @override
  void pop() => super.noSuchMethod(
        Invocation.method(
          #pop,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(_i7.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i7.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
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
