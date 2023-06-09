import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:intl/intl.dart';
import 'package:projectunity/data/model/leave/leave.dart';
import '../../../../../data/configs/colors.dart';
import '../../../../../data/configs/space_constant.dart';
import '../../../../../data/configs/text_style.dart';
import '../../../../../data/configs/theme.dart';
import '../bloc/apply_leave_bloc.dart';
import '../bloc/apply_leave_event.dart';
import '../bloc/apply_leave_state.dart';

class LeaveRequestDateRange extends StatelessWidget {
  const LeaveRequestDateRange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context).localeName;
    return BlocBuilder<ApplyLeaveBloc, ApplyLeaveState>(
      buildWhen: (previous, current) =>
          previous.selectedDates != current.selectedDates,
      builder: (context, state) => state.selectedDates.length < 3
          ? Column(
              children: state.selectedDates.entries
                  .map((date) => Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: primarySpacing,
                          vertical: primaryHalfSpacing),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: AppTheme.commonBorderRadius,
                          boxShadow: AppTheme.commonBoxShadow),
                      child: Row(
                        children: [
                          Text(
                            DateFormat('EEEE, ', locale).format(date.key),
                            style: AppFontStyle.bodySmallRegular,
                          ),
                          Text(
                            DateFormat('d ', locale).format(date.key),
                            style: AppFontStyle.bodySmallHeavy
                                .copyWith(color: AppColors.primaryBlue),
                          ),
                          Text(
                            DateFormat('MMMM', locale).format(date.key),
                            style: AppFontStyle.bodySmallRegular,
                          ),
                          const Spacer(),
                          LeaveTimePeriodBox(
                            dayTimePeriod: date,
                          ),
                        ],
                      )))
                  .toList())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(primaryHalfSpacing),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.selectedDates.entries
                    .map((date) => Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.symmetric(
                              horizontal: primaryHalfSpacing),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: AppTheme.commonBorderRadius,
                              boxShadow: AppTheme.commonBoxShadow),
                          child: Column(
                            children: [
                              Text(
                                DateFormat('EEE', locale).format(date.key),
                              ),
                              Text(
                                DateFormat('d', locale).format(date.key),
                                style: AppFontStyle.titleDark
                                    .copyWith(color: AppColors.primaryBlue),
                              ),
                              Text(
                                DateFormat('MMM', locale).format(date.key),
                              ),
                              const SizedBox(
                                height: primaryVerticalSpacing,
                              ),
                              LeaveTimePeriodBox(dayTimePeriod: date),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
    );
  }
}

class LeaveTimePeriodBox extends StatelessWidget {
  final MapEntry<DateTime, LeaveDayDuration> dayTimePeriod;

  const LeaveTimePeriodBox({
    Key? key,
    required this.dayTimePeriod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 150,
      ),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: AppColors.darkGrey),
      ),
      child: Material(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<LeaveDayDuration>(
            style: AppFontStyle.bodySmallRegular,
            isExpanded: true,
            iconSize: 0.0,
            icon: const SizedBox(),
            borderRadius: BorderRadius.circular(12),
            alignment: Alignment.center,
            value: dayTimePeriod.value,
            items: LeaveDayDuration.values.map((dayDuration) => DropdownMenuItem(
                    value: dayDuration,
                    child: Center(
                        child: Text(AppLocalizations.of(context)
                            .leave_day_duration_tag(dayDuration.name)))))
                .toList(),
            onChanged: (value) {
                    context.read<ApplyLeaveBloc>().add(
                        ApplyLeaveUpdateLeaveOfTheDayEvent(
                            date: dayTimePeriod.key,
                            value: value ?? dayTimePeriod.value));
                  },
          ),
        ),
      ),
    );
  }
}
