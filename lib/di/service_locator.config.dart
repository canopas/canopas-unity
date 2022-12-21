// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../bloc/authentication/logout_bloc.dart' as _i35;
import '../bloc/network/network_connection_bloc.dart' as _i9;
import '../navigation/navigation_stack_manager.dart' as _i18;
import '../pref/user_preference.dart' as _i14;
import '../provider/user_data.dart' as _i17;
import '../services/admin/employee/employee_service.dart' as _i7;
import '../services/admin/paid_leave/paid_leave_service.dart' as _i11;
import '../services/admin/requests/admin_leave_service.dart' as _i3;
import '../services/auth/auth_service.dart' as _i6;
import '../services/leave/user_leave_service.dart' as _i13;
import '../stateManager/auth/auth_manager.dart' as _i16;
import '../ui/admin/addmember/bloc/add_member_bloc.dart' as _i24;
import '../ui/admin/employee/detail/bloc/employee_detail_bloc.dart' as _i30;
import '../ui/admin/employee/list/bloc/employee_list_bloc.dart' as _i33;
import '../ui/admin/home/bloc/admin_home_bloc.dart' as _i25;
import '../ui/admin/leave_details/bloc/admin_leave_details_bloc.dart' as _i26;
import '../ui/admin/setting/bloc/admin_setting_screen_bloc.dart' as _i27;
import '../ui/admin/setting/update_leave_count/bloc/admin_setting_update_leave_count_screen_bloc.dart'
    as _i28;
import '../ui/admin/setting/update_leave_count/bloc/admin_setting_update_paid_leave_button_state_bloc.dart'
    as _i4;
import '../ui/login/bloc/login_view_bloc.dart' as _i36;
import '../ui/onboard/bloc/onboard_bloc.dart' as _i19;
import '../ui/shared/user_leave_calendar/bloc/calendar_bloc/leave_calendar_bloc.dart'
    as _i8;
import '../ui/shared/user_leave_calendar/bloc/user_leave_calendar_view_bloc/user_leave_calendar_bloc.dart'
    as _i22;
import '../ui/shared/who_is_out_calendar/bloc/who_is_out_calendar_bloc/who_is_out_calendar_bloc.dart'
    as _i15;
import '../ui/shared/who_is_out_calendar/bloc/who_is_out_view_bloc/who_is_out_view_bloc.dart'
    as _i23;
import '../ui/user/all_leaves/bloc/filter_bloc/all_leaves_filter_bloc.dart'
    as _i5;
import '../ui/user/all_leaves/bloc/leaves_bloc/all_leaves_bloc.dart' as _i29;
import '../ui/user/home/bloc/employee_home_bloc.dart' as _i31;
import '../ui/user/leave/applyLeave/bloc/leave_request_form_bloc/leave_request_view_bloc.dart'
    as _i34;
import '../ui/user/leave_details/bloc/leave_details_bloc/employee_leave_details_bloc.dart'
    as _i32;
import '../ui/user/requested_leaves/bloc/requested_leaves_bloc.dart' as _i20;
import '../ui/user/upcoming_leaves/bloc/upcoming_leaves_bloc.dart' as _i21;
import 'app_module.dart' as _i37; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.singleton<_i3.AdminLeaveService>(
    _i3.AdminLeaveService(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i4.AdminPaidLeaveUpdateSettingTextFieldBloc>(
      () => _i4.AdminPaidLeaveUpdateSettingTextFieldBloc());
  gh.factory<_i5.AllLeavesFilterBloc>(() => _i5.AllLeavesFilterBloc());
  gh.singleton<_i6.AuthService>(_i6.AuthService());
  gh.singleton<_i7.EmployeeService>(
    _i7.EmployeeService(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i8.LeaveCalendarBloc>(() => _i8.LeaveCalendarBloc());
  gh.factory<_i9.NetworkConnectionBloc>(
      () => _i9.NetworkConnectionBloc(get<_i10.Connectivity>()));
  gh.singleton<_i11.PaidLeaveService>(_i11.PaidLeaveService());
  await gh.factoryAsync<_i12.SharedPreferences>(
    () => appModule.preferences,
    preResolve: true,
  );
  gh.singleton<_i13.UserLeaveService>(_i13.UserLeaveService());
  gh.factory<_i14.UserPreference>(
      () => _i14.UserPreference(get<_i12.SharedPreferences>()));
  gh.factory<_i15.WhoIsOutCalendarBloc>(() => _i15.WhoIsOutCalendarBloc());
  gh.singleton<_i16.AuthManager>(_i16.AuthManager(
    get<_i14.UserPreference>(),
    get<_i6.AuthService>(),
  ));
  gh.singleton<_i17.UserManager>(_i17.UserManager(get<_i14.UserPreference>()));
  gh.singleton<_i18.NavigationStackManager>(
    _i18.NavigationStackManager(get<_i17.UserManager>()),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i19.OnBoardBloc>(() => _i19.OnBoardBloc(
        get<_i14.UserPreference>(),
        get<_i18.NavigationStackManager>(),
      ));
  gh.factory<_i20.RequestedLeavesViewBloc>(() => _i20.RequestedLeavesViewBloc(
        get<_i18.NavigationStackManager>(),
        get<_i11.PaidLeaveService>(),
        get<_i13.UserLeaveService>(),
        get<_i17.UserManager>(),
      ));
  gh.factory<_i21.UpcomingLeavesViewBloc>(() => _i21.UpcomingLeavesViewBloc(
        get<_i18.NavigationStackManager>(),
        get<_i11.PaidLeaveService>(),
        get<_i13.UserLeaveService>(),
        get<_i17.UserManager>(),
      ));
  gh.factory<_i22.UserLeaveCalendarViewBloc>(
      () => _i22.UserLeaveCalendarViewBloc(
            get<_i13.UserLeaveService>(),
            get<_i18.NavigationStackManager>(),
            get<_i7.EmployeeService>(),
            get<_i11.PaidLeaveService>(),
          ));
  gh.factory<_i23.WhoIsOutViewBloc>(() => _i23.WhoIsOutViewBloc(
        get<_i7.EmployeeService>(),
        get<_i3.AdminLeaveService>(),
        get<_i18.NavigationStackManager>(),
        get<_i17.UserManager>(),
      ));
  gh.factory<_i24.AddMemberBloc>(() => _i24.AddMemberBloc(
        get<_i7.EmployeeService>(),
        get<_i18.NavigationStackManager>(),
      ));
  gh.factory<_i25.AdminHomeBloc>(() => _i25.AdminHomeBloc(
        get<_i18.NavigationStackManager>(),
        get<_i3.AdminLeaveService>(),
        get<_i7.EmployeeService>(),
        get<_i13.UserLeaveService>(),
        get<_i11.PaidLeaveService>(),
      ));
  gh.factory<_i26.AdminLeaveDetailsBloc>(() => _i26.AdminLeaveDetailsBloc(
        get<_i13.UserLeaveService>(),
        get<_i18.NavigationStackManager>(),
        get<_i3.AdminLeaveService>(),
        get<_i11.PaidLeaveService>(),
      ));
  gh.factory<_i27.AdminSettingScreenBLoc>(
      () => _i27.AdminSettingScreenBLoc(get<_i18.NavigationStackManager>()));
  gh.factory<_i28.AdminSettingUpdatePaidLeaveCountBloc>(
      () => _i28.AdminSettingUpdatePaidLeaveCountBloc(
            get<_i11.PaidLeaveService>(),
            get<_i18.NavigationStackManager>(),
          ));
  gh.factory<_i29.AllLeavesViewBloc>(() => _i29.AllLeavesViewBloc(
        get<_i18.NavigationStackManager>(),
        get<_i17.UserManager>(),
        get<_i13.UserLeaveService>(),
        get<_i11.PaidLeaveService>(),
      ));
  gh.factory<_i30.EmployeeDetailBloc>(() => _i30.EmployeeDetailBloc(
        get<_i18.NavigationStackManager>(),
        get<_i7.EmployeeService>(),
      ));
  gh.factory<_i31.EmployeeHomeBloc>(() => _i31.EmployeeHomeBloc(
        get<_i17.UserManager>(),
        get<_i13.UserLeaveService>(),
        get<_i11.PaidLeaveService>(),
        get<_i7.EmployeeService>(),
        get<_i3.AdminLeaveService>(),
        get<_i18.NavigationStackManager>(),
      ));
  gh.factory<_i32.EmployeeLeaveDetailsBloc>(() => _i32.EmployeeLeaveDetailsBloc(
        get<_i13.UserLeaveService>(),
        get<_i18.NavigationStackManager>(),
        get<_i11.PaidLeaveService>(),
        get<_i17.UserManager>(),
      ));
  gh.factory<_i33.EmployeeListBloc>(() => _i33.EmployeeListBloc(
        get<_i18.NavigationStackManager>(),
        get<_i7.EmployeeService>(),
      ));
  gh.factory<_i34.LeaveRequestBloc>(() => _i34.LeaveRequestBloc(
        get<_i17.UserManager>(),
        get<_i11.PaidLeaveService>(),
        get<_i13.UserLeaveService>(),
        get<_i18.NavigationStackManager>(),
      ));
  gh.factory<_i35.LogOutBloc>(() => _i35.LogOutBloc(
        get<_i18.NavigationStackManager>(),
        get<_i14.UserPreference>(),
        get<_i6.AuthService>(),
      ));
  gh.factory<_i36.LoginBloc>(() => _i36.LoginBloc(
        get<_i16.AuthManager>(),
        get<_i17.UserManager>(),
        get<_i18.NavigationStackManager>(),
        get<_i6.AuthService>(),
      ));
  return get;
}

class _$AppModule extends _i37.AppModule {}
