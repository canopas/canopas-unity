import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:projectunity/data/configs/text_style.dart';
import 'package:projectunity/ui/user/members/detail/bloc/user_employee_detail_bloc.dart';
import 'package:projectunity/ui/user/members/detail/bloc/user_employee_detail_state.dart';
import 'package:projectunity/ui/widget/circular_progress_indicator.dart';
import '../../../../../data/model/leave/leave.dart';
import '../../../../navigation/app_router.dart';
import '../../../../widget/error_snack_bar.dart';
import '../../../../widget/leave_card.dart';

class TabContent extends StatelessWidget {
  const TabContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return BlocConsumer<UserEmployeeDetailBloc, UserEmployeeDetailState>(
        listenWhen: (previous, current) =>
            previous is! UserEmployeeDetailErrorState &&
            current is UserEmployeeDetailErrorState,
        listener: (context, state) {
          if (state is UserEmployeeDetailErrorState) {
            showSnackBar(context: context, error: state.error);
          }
        },
        builder: (context, state) {
          if (state is UserEmployeeDetailLoadingState) {
            return const Padding(
              padding: EdgeInsets.all(30),
              child: AppCircularProgressIndicator(),
            );
          } else if (state is UserEmployeeDetailSuccessState &&
              state.upcomingLeaves.isNotEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 16),
                  child: Text(
                    localization.user_leave_upcoming_leaves_tag,
                    style: AppFontStyle.titleDark,
                  ),
                ),
                ListView.separated(
                    padding: const EdgeInsets.all(16),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.upcomingLeaves.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      Leave leave = state.upcomingLeaves[index];
                      return LeaveCard(
                        onTap: () {
                          context.goNamed(Routes.userLeaveDetail, params: {
                            RoutesParamsConst.leaveId: leave.leaveId
                          });
                        },
                        leave: leave,
                      );
                    }),
              ],
            );
          }
          return const SizedBox();
        });
  }
}
