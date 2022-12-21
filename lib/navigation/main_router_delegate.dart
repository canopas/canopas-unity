import 'package:flutter/material.dart';
import 'package:projectunity/model/leave_application.dart';
import 'package:projectunity/ui/login/login_screen.dart';
import 'package:projectunity/ui/onboard/onboard_screen.dart';
import 'package:projectunity/ui/user/leave_details/employee_leave_details.dart';
import 'package:projectunity/ui/user/home/employee_home_screen.dart';
import '../provider/user_data.dart';
import '../ui/admin/addmember/admin_add_member_screen.dart';
import '../ui/admin/employee/detail/employee_detail_screen.dart';
import '../ui/admin/employee/list/employee_list_screen.dart';
import '../ui/admin/home/admin_home_screen.dart';
import '../ui/admin/leave_details/admin_leave_details_view.dart';
import '../ui/admin/setting/admin_setting_screen.dart';
import '../ui/admin/setting/update_leave_count/update_leave_counts_screen.dart';
import '../ui/shared/user_leave_calendar/user_leave_calendar.dart';
import '../ui/shared/who_is_out_calendar/who_is_out_calendar_view.dart';
import '../ui/user/all_leaves/all_leaves_view.dart';
import '../ui/user/leave/applyLeave/leave_request_view.dart';
import '../ui/user/requested_leaves/requested_leaves_view.dart';
import '../ui/user/setting/employee_setting_screen.dart';
import '../ui/user/upcoming_leaves/upcoming_leaves_view.dart';
import 'navigation_stack_manager.dart';

class MainRouterDelegate extends RouterDelegate<NavigationStackManager>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final NavigationStackManager stack;
  final UserManager userManager;

  MainRouterDelegate({required this.stack, required this.userManager})
      : super() {
    stack.addListener(notifyListeners);
  }

  @override
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void dispose() {
    stack.removeListener(notifyListeners);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey, pages: _buildStack(), onPopPage: _onPopPage);
  }

  bool _onPopPage(Route route, dynamic result) {
    if (!route.didPop(result)) {
      return false;
    }
    stack.pop();
    return true;
  }

  List<Page> _buildStack() => stack.pages
      .map((state) => state.when(
          onBoard: () => const MaterialPage(
              key: ValueKey("onboard"), child: OnBoardScreenBlocProvider()),
          login: () =>
              const MaterialPage(key: ValueKey("login"), child: LoginPage()),
          adminHome: () =>  const MaterialPage(
              key: ValueKey("admin-home"),
                child: AdminHomePage()
              ),
          adminSettingsState: () => const MaterialPage(
              key: ValueKey("admin-setting"), child: AdminSettingPage()),
          paidLeaveSettingsState: () => const MaterialPage(
              key: ValueKey("admin-paid-leave-count"),
              child: AdminUpdateLeaveCountsPage()),
          addMemberState: () => const MaterialPage(
              key: ValueKey("add-member"), child: AdminAddMemberPage()),
    adminEmployeeListState: () => const MaterialPage(
                key: ValueKey("employee-list-admin"),
                child: EmployeeListPage()),
          employeeDetailState: (String selectedEmployee) => MaterialPage(
              key: const ValueKey('employee-detail'),
              child: EmployeeDetailPage(
                id: selectedEmployee,
              )),
    adminLeaveDetailState: (LeaveApplication leaveApplication) =>
        MaterialPage(
            key: const ValueKey('leave-details'),
            child: AdminLeaveDetailsPage(
              leaveApplication: leaveApplication,
            )),
    employeeLeaveDetailState: (LeaveApplication leaveApplication) =>
        MaterialPage(
            key: const ValueKey('leave-details'),
            child: EmployeeLeaveDetailsPage(
              leaveApplication: leaveApplication,
            )),
    employeeHome: () =>
    const MaterialPage(
        key: ValueKey("employee-home"), child: EmployeeHomePage()),
    employeeSettingsState: () =>
    const MaterialPage(
        key: ValueKey("employee-setting"),
        child: EmployeeSettingPage()),
    employeeAllLeavesScreenState: () => const MaterialPage(
        key: ValueKey("all-leaves"), child: AllLeavesPage()),
    employeeRequestedLeavesScreenState: () => const MaterialPage(
        key: ValueKey("requested-leaves"), child: RequestedLeavesPage()),
    employeeUpcomingLeavesScreenState: () => const MaterialPage(
        key: ValueKey("upcoming-leaves"), child: UpcomingLeavesPage()),
    leaveRequestState: () =>
    const MaterialPage(
        key: ValueKey("apply-leave"), child: RequestLeavePage()),
          whoIsOutCalendarState: () => const MaterialPage(
              key: ValueKey('who-is-out-calendar'),
              child: WhoIsOutCalendarViewProvider()),
          userLeaveCalendarState: (String userId) => MaterialPage(
              key: const ValueKey('user-view-calendar'),
              child: UserLeaveCalendarViewProvider(userId: userId,)),
  ))
      .toList();

  @override
  Future<void> setNewRoutePath(NavigationStackManager configuration) async {}

  @override
  NavigationStackManager get currentConfiguration => stack;
}
