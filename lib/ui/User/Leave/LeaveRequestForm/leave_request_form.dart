import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectunity/ui/User/Leave/LeaveRequestForm/Contents/DateTimeCard/start_leave_card.dart';
import 'package:projectunity/ui/User/Leave/LeaveRequestForm/Contents/leave_type_card.dart';
import 'package:projectunity/ui/User/Leave/LeaveRequestForm/Contents/reason_card.dart';
import 'package:projectunity/ui/User/Leave/LeaveRequestForm/Contents/supervisor_card.dart';
import 'package:projectunity/utils/Constant/color_constant.dart';

import 'Contents/DateTimeCard/end_leave_card.dart';
import 'Contents/bottom_button.dart';

class LeaveRequestForm extends StatefulWidget {
  const LeaveRequestForm({Key? key}) : super(key: key);

  @override
  State<LeaveRequestForm> createState() => _LeaveRequestFormState();
}

class _LeaveRequestFormState extends State<LeaveRequestForm> {
  int startLeaveDate = 0;
  int endLeaveDate = 0;
  TimeOfDay startLeaveTime = TimeOfDay.now();
  TimeOfDay endLeaveTime = TimeOfDay.now();
  String? leaveType;
  int? employeeId;

  final TextEditingController _reasonEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black54,
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text('Leave Request'),
        titleTextStyle: GoogleFonts.ibmPlexSans(
            color: Colors.black54, fontSize: 22, fontWeight: FontWeight.w600),
        backgroundColor: const Color(appBarColor),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(5)),
          margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(children: [
              SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LeaveTypeCard(leaveType: leaveType),
                      StartLeaveCard(
                        time: startLeaveTime,
                        date: startLeaveDate,
                      ),
                      EndLeaveCard(time: endLeaveTime, date: endLeaveDate),
                      ReasonCard(controller: _reasonEditingController),
                      SupervisorCard(
                        employeeId: employeeId,
                      ),
                      Container(
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        spreadRadius: 15,
                      ),
                    ]),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: BottomButton(
                            text: 'Reset',
                            onPress: () {},
                            color: Colors.white,
                            borderColor: Colors.grey.shade300,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 2,
                          child: BottomButton(
                              text: 'Apply Leave',
                              onPress: () {},
                              color: Color(kPrimaryColour),
                              borderColor: Color(kPrimaryColour)),
                        ),
                      ],
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
