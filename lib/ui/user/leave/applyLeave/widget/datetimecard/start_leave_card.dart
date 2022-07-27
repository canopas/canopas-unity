import 'package:flutter/material.dart';
import 'package:projectunity/configs/font_size.dart';
import 'package:provider/provider.dart';

import '../../../../../../configs/colors.dart';
import '../../../../../../stateManager/user/leave_request_data_manager.dart';
import 'picker_card.dart';

class StartLeaveCard extends StatelessWidget {
  const StartLeaveCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 5),
          child: Text(
            'From:',
            style: TextStyle(
                color: AppColors.secondaryText, fontSize: titleTextSize),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: [
              Consumer<LeaveRequestDataManager>(
                builder: (context, _leaveService, _) => DatePickerCard(
                    onPress: () async {
                      DateTime? date = await pickDate(context);
                      _leaveService.setStartLeaveDate(date);
                    },
                    currentDate: _leaveService.startLeaveDate),
              ),
              Consumer<LeaveRequestDataManager>(
                builder: (context, _leaveService, _) => TimePickerCard(
                  onPress: () async {
                    TimeOfDay time = (await pickTime(context));
                    _leaveService.setStartTime(time);
                  },
                  time: _leaveService.startTime,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

Future<DateTime> pickDate(BuildContext context) async {
  DateTime? pickDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2025));
  if (pickDate == null) return DateTime.now();
  return pickDate;
}

Future<TimeOfDay> pickTime(BuildContext context) async {
  TimeOfDay timeOfDay = TimeOfDay.now();
  TimeOfDay? time =
      await showTimePicker(context: context, initialTime: timeOfDay);
  if (time == null) return timeOfDay;
  return time;
}