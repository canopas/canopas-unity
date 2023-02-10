import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:projectunity/exception/error_const.dart';
import 'package:projectunity/model/employee/employee.dart';
import 'package:projectunity/pref/user_preference.dart';
import 'package:projectunity/provider/user_data.dart';
import 'package:projectunity/services/auth/auth_service.dart';
import 'package:projectunity/ui/user/settings/settings_screen/bloc/user_settings_bloc.dart';
import 'package:projectunity/ui/user/settings/settings_screen/bloc/user_settings_event.dart';
import 'package:projectunity/ui/user/settings/settings_screen/bloc/user_settings_state.dart';

import 'user_settings_bloc_test.mocks.dart';

@GenerateMocks([AuthService, UserPreference, UserManager])
void main() {
  late UserPreference userPreference;
  late AuthService authService;
  late UserSettingsBloc userSettingsBloc;
  late UserManager userManager;

  Employee employee = const Employee(
      id: 'id',
      roleType: 1,
      name: 'Andrew jhone',
      employeeId: '100',
      email: 'dummy123@testing.com',
      designation: 'Android developer');

  group("User settings test", () {
    setUp(() {
      userPreference = MockUserPreference();
      authService = MockAuthService();
      userManager = MockUserManager();
      when(userManager.employee).thenReturn(employee);
      userSettingsBloc =
          UserSettingsBloc(userManager, authService, userPreference);
    });

    test('get user data on screen is created test', () {
      expect(userSettingsBloc.state.currentEmployee, employee);
    });

    test("log out successful test with navigation test", () async {
      when(authService.signOutWithGoogle())
          .thenAnswer((_) => Future(() => true));
      userSettingsBloc.add(UserSettingsLogOutEvent());
      expect(
          userSettingsBloc.stream,
          emitsInOrder([
            UserSettingsState(
                currentEmployee: employee, status: UserSettingsStatus.loading),
            UserSettingsState(
                currentEmployee: employee, status: UserSettingsStatus.success),
          ]));
      await untilCalled(userManager.hasLoggedIn());
      verify(userManager.hasLoggedIn()).called(1);
    });

    test("log out failure test", () {
      when(authService.signOutWithGoogle())
          .thenAnswer((_) => Future(() => false));
      userSettingsBloc.add(UserSettingsLogOutEvent());
      expect(
          userSettingsBloc.stream,
          emitsInOrder([
            UserSettingsState(
                currentEmployee: employee, status: UserSettingsStatus.loading),
            UserSettingsState(
                currentEmployee: employee,
                status: UserSettingsStatus.failure,
                error: signOutError),
          ]));
    });
  });
}