import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:projectunity/core/extensions/list.dart';
import 'package:projectunity/core/utils/const/leave_screen_type_map.dart';
import 'package:projectunity/di/service_locator.dart';
import 'package:projectunity/ui/user/leave/leaveScreen/widget/leave_card.dart';

import '../../../../bloc/employee/leave/user_leave_bloc.dart';
import '../../../../configs/colors.dart';
import '../../../../model/leave/leave.dart';
import '../../../../rest/api_response.dart';
import '../../../../widget/circular_progress_indicator.dart';
import '../../../../widget/empty_screen.dart';
import '../../../../widget/error_snackbar.dart';

class LeaveScreen extends StatefulWidget {
  final int leaveScreenType;

  const LeaveScreen({Key? key, required this.leaveScreenType})
      : super(key: key);

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}


class _LeaveScreenState extends State<LeaveScreen> {

  final _userLeavesBLoc = getIt<UserLeavesBloc>();

  @override
  void initState() {
    _userLeavesBLoc.getUserLeaves(leaveScreenType: widget.leaveScreenType);
    super.initState();
  }

  @override
  void dispose() {
    _userLeavesBLoc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        title: Text(
          _header(context),
        ),
      ),
      body: StreamBuilder<ApiResponse<List<Leave>>>(
          stream: _userLeavesBLoc.leaveList,
          initialData: const ApiResponse.idle(),
          builder: (context, snapshot) {
            return snapshot.data!.when(
                idle: () => Container(),
                loading: () => const kCircularProgressIndicator(),
                completed: (List<Leave> leaves) {
                  if (leaves.isEmpty) {
                    return EmptyScreen(message: AppLocalizations.of(context).empty_leave_state_message,);
                  } else {
                    return ListView.separated(
                        itemCount: leaves.length,
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, right: 16),
                        itemBuilder: (BuildContext context, int index) {
                          leaves.sortedByDate();
                          Leave leave = leaves[index];
                          return LeaveCard(
                            leave: leave,
                          );
                        }, separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),);
                  }
                },
                error: (String error) {
                  return showSnackBar(context: context, error: error);
                });
          }),
    );
  }

  String _header(BuildContext context){
    if (widget.leaveScreenType == requestedLeave) {
      return AppLocalizations.of(context).user_home_requested_leaves_tag;
    } else if (widget.leaveScreenType == upcomingLeave) {
      return AppLocalizations.of(context).user_home_upcoming_leaves_tag;
    } else {
      return AppLocalizations.of(context).user_home_all_leaves_tag;
    }
  }
}
