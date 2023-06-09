import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

import '../../../../../data/configs/colors.dart';
import '../../../../../data/configs/space_constant.dart';
import '../../../../../data/configs/text_style.dart';
import '../../../../../data/configs/theme.dart';
import '../../../../../data/core/utils/date_formatter.dart';
import '../../../../../data/model/leave/leave.dart';

class UserLeaveRequestDateContent extends StatelessWidget {
  final Leave leave;

  const UserLeaveRequestDateContent({Key? key, required this.leave})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String totalDays = DateFormatter(AppLocalizations.of(context))
        .getLeaveDurationPresentationLong(leave.total);
    String duration = DateFormatter(AppLocalizations.of(context)).dateInLine(
        startDate: leave.startDate, endDate: leave.endDate);

    return Container(
      padding: const EdgeInsets.all(primaryHorizontalSpacing),
      margin: const EdgeInsets.symmetric(
          vertical: primaryHalfSpacing, horizontal: primaryHorizontalSpacing),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: AppTheme.commonBorderRadius,
        boxShadow: AppTheme.commonBoxShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(duration, style: AppFontStyle.labelRegular),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            totalDays,
            style: AppFontStyle.bodySmallHeavy
                .copyWith(color: AppColors.primaryBlue),
          ),
        ],
      ),
    );
  }
}
