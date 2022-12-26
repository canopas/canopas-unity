import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectunity/core/extensions/leave_extension.dart';
import 'package:projectunity/ui/shared/user_leave_calendar/bloc/calendar_bloc/leave_calendar_bloc.dart';
import 'package:projectunity/ui/shared/user_leave_calendar/bloc/calendar_bloc/leave_calendar_event.dart';
import 'package:projectunity/ui/shared/user_leave_calendar/bloc/calendar_bloc/leave_calendar_state.dart';
import 'package:projectunity/widget/circular_progress_indicator.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import '../../../configs/text_style.dart';
import '../../../configs/theme.dart';
import '../../../core/utils/const/space_constant.dart';
import '../../../di/service_locator.dart';
import '../../../widget/calendar.dart';
import '../../../widget/leave_card.dart';
import 'bloc/user_leave_calendar_view_bloc/user_leave_calendar_bloc.dart';
import 'bloc/user_leave_calendar_view_bloc/user_leave_calendar_events.dart';
import 'bloc/user_leave_calendar_view_bloc/user_leave_calendar_states.dart';


class UserLeaveCalendarViewProvider extends StatelessWidget {
  final String userId;
  const UserLeaveCalendarViewProvider({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:  [
      BlocProvider(
        create: (_) => getIt<LeaveCalendarBloc>(),
      ),
      BlocProvider(
        create: (_) => getIt<UserLeaveCalendarViewBloc>()..add(UserLeaveCalendarInitialLoadEvent(userId)),
      ),
    ],
        child: const UserLeaveCalendarView());
  }
}

class UserLeaveCalendarView extends StatefulWidget {
  const UserLeaveCalendarView({Key? key}) : super(key: key);

  @override
  State<UserLeaveCalendarView> createState() => _UserLeaveCalendarViewState();
}

class _UserLeaveCalendarViewState extends State<UserLeaveCalendarView> {

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.leave_calendar_title),
      ),
      body: Column(
        children: [
          CalendarCard(
            calendar: TableCalendar(
              rangeSelectionMode: RangeSelectionMode.toggledOn,
              onRangeSelected: (startDate, endDate, selectedDate) {
                context.read<UserLeaveCalendarViewBloc>().add(DateRangeSelectedEvent(startDate, endDate, selectedDate));
                context.read<LeaveCalendarBloc>().add(DateRangeSelectedCalendarEvent(startDate, endDate, selectedDate));
              },
              onFormatChanged: (format) {
                context.read<LeaveCalendarBloc>().add(ChangeCalendarFormatEvent(format));
              },
              calendarFormat: context.watch<LeaveCalendarBloc>().state.calendarFormat,
              focusedDay: context.watch<LeaveCalendarBloc>().state.selectedDate ?? DateTime.now(),
              rangeStartDay: context.watch<LeaveCalendarBloc>().state.startDate,
              rangeEndDay: context.watch<LeaveCalendarBloc>().state.endDate,
              firstDay: DateTime(2020),
              lastDay: DateTime(2025),
              startingDayOfWeek: StartingDayOfWeek.sunday,
              calendarStyle: AppTheme.calendarStyle,
              headerStyle: AppTheme.calendarHeaderStyle,
              eventLoader: (day){
                UserLeaveCalendarViewState state =  context.watch<UserLeaveCalendarViewBloc>().state;
                if(state is UserLeaveCalendarViewSuccessState){
                 return state.allLeaveApplications.where((la) => la.leave.findUserOnLeaveByDate(day: day)).toList();
                }
                return [];
              }
            ),
            onVerticalSwipe: (swipe){
              context.read<LeaveCalendarBloc>().add(ChangeCalendarFormatBySwipeEvent(swipe.index));
            },
          ),
          Expanded(
            child: BlocBuilder<UserLeaveCalendarViewBloc,UserLeaveCalendarViewState>(
                builder: (context, state) {
                  if(state is UserLeaveCalendarViewLoadingState){
                    return const AppCircularProgressIndicator();
                  } else if(state is UserLeaveCalendarViewSuccessState && state.leaveApplications.isNotEmpty){
                    return ListView.separated(
                      padding: const EdgeInsets.all( primaryHorizontalSpacing),
                      itemBuilder: (BuildContext context, int index) => LeaveCard(leaveApplication: state.leaveApplications[index],
                        onTap: () {
                          context.read<UserLeaveCalendarViewBloc>().add(LeaveTypeCardTapEvent(state.leaveApplications[index]));
                       },),
                      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: primaryHorizontalSpacing,),
                      itemCount: state.leaveApplications.length,
                    );}
                  return BlocBuilder<LeaveCalendarBloc,LeaveCalendarState>(
                    buildWhen: (previous, current) => previous.selectedDate != current.selectedDate || previous.endDate != current.endDate || previous.startDate != current.startDate,
                    builder: (context, state) =>  EmptyCalendarScreen(
                        endDate: state.endDate,
                        selectedDate: state.selectedDate,
                        startDate: state.startDate,
                      ),
                  );
                  }
            ),
          )
        ],
      )
    );
  }
}

class EmptyCalendarScreen extends StatelessWidget {
  final DateTime? startDate;
  final DateTime? endDate;
  final DateTime? selectedDate;
  const EmptyCalendarScreen({Key? key, this.startDate, this.endDate, this.selectedDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
      (endDate!=null)
          ? AppLocalizations.of(context).range_calendar_no_leave_msg(startDate!,endDate!)
          :AppLocalizations.of(context).calendar_no_leave_msg(selectedDate?? DateTime.now()),
      style: AppTextStyle.secondarySubtitle500,textAlign: TextAlign.center,));
  }
}