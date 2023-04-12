import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:projectunity/data/core/extensions/date_time.dart';

import '../../../../../data/core/exception/error_const.dart';
import '../../../../../data/event_bus/events.dart';
import '../../../../../data/model/employee/employee.dart';
import '../../../../../data/services/employee_service.dart';
import '../../detail/bloc/employee_detail_event.dart';
import 'admin_edit_employee_events.dart';
import 'admin_edit_employee_state.dart';

@Injectable()
class AdminEditEmployeeDetailsBloc
    extends Bloc<EditEmployeeByAdminEvent, AdminEditEmployeeDetailsState> {
  final EmployeeService _employeeService;

  AdminEditEmployeeDetailsBloc(this._employeeService)
      : super(const AdminEditEmployeeDetailsState()) {
    on<EditEmployeeByAdminInitialEvent>(_initRoleTypeAndDate);
    on<ChangeEmployeeRoleEvent>(_changeRoleType);
    on<UpdateEmployeeByAdminEvent>(_updateEmployee);
    on<ChangeEmployeeDateOfJoiningEvent>(_changeDateOfJoining);
    on<ChangeEmployeeDesignationEvent>(_validDesignation);
    on<ChangeEmployeeEmailEvent>(_validEmail);
    on<ChangeEmployeeIdEvent>(_validEmployeeId);
    on<ChangeEmployeeNameEvent>(_validName);
  }

  void _initRoleTypeAndDate(EditEmployeeByAdminInitialEvent event,
      Emitter<AdminEditEmployeeDetailsState> emit) {
    emit(state.copyWith(
        roleType: event.roleType,
        dateOfJoining: event.dateOfJoining?.toDate ?? DateTime.now().dateOnly));
  }

  void _changeRoleType(ChangeEmployeeRoleEvent event,
      Emitter<AdminEditEmployeeDetailsState> emit) {
    emit(state.copyWith(roleType: event.roleType));
  }

  void _changeDateOfJoining(ChangeEmployeeDateOfJoiningEvent event,
      Emitter<AdminEditEmployeeDetailsState> emit) {
    emit(state.copyWith(dateOfJoining: event.dateOfJoining));
  }

  void _validName(ChangeEmployeeNameEvent event,
      Emitter<AdminEditEmployeeDetailsState> emit) {
    if (event.name.length < 4) {
      emit(state.copyWith(nameError: true));
    } else {
      emit(state.copyWith(nameError: false));
    }
  }

  void _validEmail(ChangeEmployeeEmailEvent event,
      Emitter<AdminEditEmployeeDetailsState> emit) {
    if (event.email.isEmpty || !event.email.contains('@')) {
      emit(state.copyWith(emailError: true));
    } else {
      emit(state.copyWith(emailError: false));
    }
  }

  void _validDesignation(ChangeEmployeeDesignationEvent event,
      Emitter<AdminEditEmployeeDetailsState> emit) {
    if (event.designation.isEmpty) {
      emit(state.copyWith(designationError: true));
    } else {
      emit(state.copyWith(designationError: false));
    }
  }

  void _validEmployeeId(ChangeEmployeeIdEvent event,
      Emitter<AdminEditEmployeeDetailsState> emit) {
    if (event.employeeId.isEmpty) {
      emit(state.copyWith(employeeIdError: true));
    } else {
      emit(state.copyWith(employeeIdError: false));
    }
  }

  void _updateEmployee(UpdateEmployeeByAdminEvent event,
      Emitter<AdminEditEmployeeDetailsState> emit) async {
    emit(state.copyWith(
        adminEditEmployeeDetailsStatus:
            AdminEditEmployeeDetailsStatus.loading));
    if (state.nameError ||
        state.designationError ||
        state.employeeIdError ||
        state.emailError) {
      emit(state.copyWith(
          adminEditEmployeeDetailsStatus:
              AdminEditEmployeeDetailsStatus.failure,
          error: fillDetailsError));
    } else {
      try {
        await _employeeService.updateEmployeeDetails(
          employee: Employee(
            uid: event.previousEmployeeData.uid,
            role: state.roleType,
            name: event.name,
            employeeId: event.employeeId,
            email: event.email,
            designation: event.designation,
            level: event.level.isEmpty ? null : event.level,
            dateOfJoining: state.dateOfJoining!.timeStampToInt,
            phone: event.previousEmployeeData.phone,
            address: event.previousEmployeeData.address,
            dateOfBirth: event.previousEmployeeData.dateOfBirth,
            gender: event.previousEmployeeData.gender,
            imageUrl: event.previousEmployeeData.imageUrl,
          ),
        );
        eventBus.fire(EmployeeDetailInitialLoadEvent(
            employeeId: event.previousEmployeeData.uid));
        emit(state.copyWith(
            adminEditEmployeeDetailsStatus:
                AdminEditEmployeeDetailsStatus.success));
      } on Exception {
        emit(state.copyWith(
            adminEditEmployeeDetailsStatus:
                AdminEditEmployeeDetailsStatus.failure,
            error: firestoreFetchDataError));
      }
    }
  }
}
