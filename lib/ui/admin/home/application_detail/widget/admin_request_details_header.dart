import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

import '../../../../../configs/space_constant.dart';
import '../../../../../configs/text_style.dart';
import '../../../../../core/utils/date_formatter.dart';

class AdminLeaveRequestLeaveTypeHeader extends StatelessWidget {
  const AdminLeaveRequestLeaveTypeHeader(
      {Key? key, required this.appliedOnInTimeStamp, required this.leaveType})
      : super(key: key);

  final int appliedOnInTimeStamp;
  final int leaveType;

  @override
  Widget build(BuildContext context) {
    String appliedOn = DateFormatter(AppLocalizations.of(context))
        .timeAgoPresentation(appliedOnInTimeStamp);
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: primaryHorizontalSpacing, vertical: primaryHalfSpacing),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)
                    .leave_type_placeholder_text(leaveType.toString()),
                style: AppFontStyle.titleDark,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                appliedOn,
                style: AppFontStyle.labelGrey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
