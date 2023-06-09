import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:intl/intl.dart';
import 'package:projectunity/data/model/leave/leave.dart';
import '../../../data/configs/colors.dart';
import '../../../data/configs/space_constant.dart';
import '../../../data/configs/text_style.dart';
import '../../../data/configs/theme.dart';

class PerDayDurationDateRange extends StatelessWidget {
  final Map<DateTime, LeaveDayDuration> perDayDurationWithDate;

  const PerDayDurationDateRange(
      {Key? key, required this.perDayDurationWithDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return perDayDurationWithDate.length > 2
        ? SingleChildScrollView(
            padding: const EdgeInsets.all(primaryVerticalSpacing),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: perDayDurationWithDate.entries
                  .map((date) => Container(
                        padding: const EdgeInsets.all(primaryHalfSpacing),
                        margin: const EdgeInsets.symmetric(
                            horizontal: primaryVerticalSpacing),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          boxShadow: AppTheme.commonBoxShadow,
                          borderRadius: AppTheme.commonBorderRadius,
                        ),
                        child: Column(
                          children: [
                            Text(
                              DateFormat('EEE', localization.localeName)
                                  .format(date.key),
                            ),
                            Text(
                              DateFormat('d', localization.localeName)
                                  .format(date.key),
                              style: AppFontStyle.titleDark.copyWith(
                                color: AppColors.primaryBlue,
                              ),
                            ),
                            Text(
                              DateFormat('MMM', localization.localeName)
                                  .format(date.key),
                            ),
                            const SizedBox(
                              height: primaryVerticalSpacing,
                            ),
                            Container(
                              constraints: const BoxConstraints(
                                maxWidth: 150,
                              ),
                              alignment: Alignment.center,
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: AppColors.primaryGray),
                              ),
                              child: Text(AppLocalizations.of(context)
                                  .leave_day_duration_tag(date.value.name)),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          )
        : Column(
            children: perDayDurationWithDate.entries
                .map((date) => Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(primaryHalfSpacing),
                    margin: const EdgeInsets.symmetric(
                        vertical: primaryHalfSpacing,
                        horizontal: primarySpacing),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      boxShadow: AppTheme.commonBoxShadow,
                      borderRadius: AppTheme.commonBorderRadius,
                    ),
                    child: Row(
                      children: [
                        Text(
                            DateFormat('EEEE, ', localization.localeName)
                                .format(date.key),
                            style: AppFontStyle.bodySmallRegular),
                        Text(
                          DateFormat('d ', localization.localeName)
                              .format(date.key),
                          style: AppFontStyle.bodySmallRegular.copyWith(
                              color: AppColors.primaryBlue,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          DateFormat('MMMM', localization.localeName)
                              .format(date.key),
                          style: AppFontStyle.bodySmallRegular,
                        ),
                        const Spacer(),
                        Container(
                          constraints: const BoxConstraints(
                            maxWidth: 150,
                          ),
                          alignment: Alignment.center,
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColors.primaryGray),
                          ),
                          child: Text(AppLocalizations.of(context)
                              .leave_day_duration_tag(date.value.name)),
                        )
                      ],
                    )))
                .toList());
  }
}
