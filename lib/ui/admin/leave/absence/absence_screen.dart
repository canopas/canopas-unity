import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:projectunity/ui/admin/leave/absence/widget/employee_leave_card.dart';

import '../../../../bloc/admin/leave/absence_bloc.dart';
import '../../../../configs/colors.dart';
import '../../../../configs/text_style.dart';
import '../../../../core/utils/const/other_constant.dart';
import '../../../../di/service_locator.dart';
import '../../../../model/leave_application.dart';
import '../../../../rest/api_response.dart';
import '../../../../widget/circular_progress_indicator.dart';
import '../../../../widget/empty_screen.dart';
import '../../../../widget/error_snackbar.dart';

class AdminAbsenceScreen extends StatefulWidget {
  const AdminAbsenceScreen({Key? key}) : super(key: key);

  @override
  State<AdminAbsenceScreen> createState() => _AdminAbsenceScreenState();
}

class _AdminAbsenceScreenState extends State<AdminAbsenceScreen> {

  final AbsenceBloc _absenceBloc = getIt<AbsenceBloc>();

  @override
  void initState() {
    _absenceBloc.getAbsenceEmployees();
    super.initState();
  }

  @override
  void dispose() {
    _absenceBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).admin_home_absence_tag,
          style: AppTextStyle.appBarTitle,
        ),
      ),
      body: StreamBuilder<ApiResponse<List<LeaveApplication>>>(
          initialData: const ApiResponse.idle(),
          stream: _absenceBloc.absenceEmployee,
          builder: (context, snapshot) {
            return snapshot.data!.when(
                idle: () => Container(),
              loading: () => const kCircularProgressIndicator(),
              completed: (List<LeaveApplication> list) => (list.isNotEmpty)
                  ? ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: primaryVerticalSpacing),itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        LeaveApplication _leaveApplication = list[index];
                        return EmployeeLeaveCard(
                            employeeLeave: _leaveApplication);
                      })
                  : EmptyScreen(
                      message: AppLocalizations.of(context)
                          .empty_absence_state_message,
                    ),
              error: (String error) =>
                  showSnackBar(context: context, error: error),
            );
          }),
    );
  }
}