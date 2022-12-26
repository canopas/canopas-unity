import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:projectunity/core/extensions/leave_extension.dart';
import 'package:projectunity/exception/error_const.dart';
import 'package:projectunity/ui/shared/who_is_out_calendar/bloc/who_is_out_view_bloc/who_is_out_view_event.dart';
import 'package:projectunity/ui/shared/who_is_out_calendar/bloc/who_is_out_view_bloc/who_is_out_view_state.dart';
import '../../../../../model/employee/employee.dart';
import '../../../../../model/leave/leave.dart';
import '../../../../../model/leave_application.dart';
import '../../../../../navigation/nav_stack/nav_stack_item.dart';
import '../../../../../navigation/navigation_stack_manager.dart';
import '../../../../../provider/user_data.dart';
import '../../../../../services/admin/employee/employee_service.dart';
import '../../../../../services/admin/requests/admin_leave_service.dart';
import 'package:collection/collection.dart';

@Injectable()
class WhoIsOutViewBloc extends Bloc<WhoIsOutViewEvent, WhoIsOutViewState> {
  final EmployeeService _employeeService;
  final AdminLeaveService _adminLeaveService;
  final NavigationStackManager _stackManager;
  final UserManager _userManager;
  List<LeaveApplication> _allLeaveRef = [];

  WhoIsOutViewBloc(this._employeeService, this._adminLeaveService,
      this._stackManager, this._userManager) :
        super(WhoIsOutViewInitialState()) {
    on<GetSelectedDateLeavesEvent>(_onSelectDate);
    on<WhoIsOutViewInitialLoadEvent>(_loadData);
    on<WhoIsOutLeaveCardTapEvent>(_onLeaveCardTap);
  }

  _onSelectDate(GetSelectedDateLeavesEvent event,
      Emitter<WhoIsOutViewState> emit) async {
    emit(WhoIsOutViewSuccessState(leaveApplications: _getSelectedDatesLeaves(event.selectedDate)));
  }


  List<LeaveApplication> _getSelectedDatesLeaves(DateTime day){
    return _allLeaveRef.where((la)=> la.leave.findUserOnLeaveByDate(day: day)).toList();
  }

  _loadData(WhoIsOutViewInitialLoadEvent event,
      Emitter<WhoIsOutViewState> emit) async {
    emit(WhoISOutViewLoadingState());
    List<Leave> leaves = await _adminLeaveService.getAllLeaves();
    List<Employee> employees = await _employeeService.getEmployees();
    try {
      _allLeaveRef = leaves.map((leave) {
        final employee = employees.firstWhereOrNull((emp) => emp.id == leave.uid);
        return (employee==null)?null:LeaveApplication(employee: employee, leave: leave);
      }).whereNotNull().toList();
      emit(WhoIsOutViewSuccessState(leaveApplications: _getSelectedDatesLeaves(DateTime.now())));
    } on Exception catch (_){
      emit(WhoIsOutViewFailureState(firestoreFetchDataError));
    }
  }

  _onLeaveCardTap(WhoIsOutLeaveCardTapEvent event,
      Emitter<WhoIsOutViewState> emit) {
    if(_userManager.isAdmin){
      _stackManager.push(NavStackItem.adminLeaveDetailState(event.leaveApplication));
    }else {
      _stackManager.push(NavStackItem.employeeLeaveDetailState(event.leaveApplication));
    }
  }

  List<LeaveApplication>  getEvents(DateTime day) => _allLeaveRef.where((la) => la.leave.findUserOnLeaveByDate(day: day)).toList();
}