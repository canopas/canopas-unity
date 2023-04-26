import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:projectunity/data/core/exception/error_const.dart';
import 'package:projectunity/data/provider/user_data.dart';
import 'package:projectunity/ui/space/join_space/bloc/join_space_event.dart';
import 'package:projectunity/ui/space/join_space/bloc/join_space_state.dart';
import '../../../../data/services/employee_service.dart';
import '../../../../data/services/space_service.dart';

@Injectable()
class JoinSpaceBloc extends Bloc<JoinSpaceEvents, JoinSpaceState> {
  final UserManager _userManager;
  final EmployeeService _employeeService;
  final SpaceService _spaceService;

  JoinSpaceBloc(this._spaceService, this._userManager, this._employeeService)
      : super(const JoinSpaceState()) {
    on<JoinSpaceInitialFetchEvent>(_init);
    on<SelectSpaceEvent>(_selectSpace);
  }

  String get userEmail => _userManager.userEmail ?? "unknown";

  void _init(
      JoinSpaceInitialFetchEvent event, Emitter<JoinSpaceState> emit) async {
    emit(state.copy(fetchSpaceStatus: Status.loading));
    try {
      final spaces = await _spaceService.getSpacesOfUser(_userManager.userUID!);
      emit(state.copy(fetchSpaceStatus: Status.success, spaces: spaces));
    } on Exception {
      emit(state.copy(
          fetchSpaceStatus: Status.failure, error: firestoreFetchDataError));
    }
  }

  Future<void> _selectSpace(
      SelectSpaceEvent event, Emitter<JoinSpaceState> emit) async {
    emit(state.copy(selectSpaceStatus: Status.loading));
    try {
      final employee = await _employeeService.getEmployeeBySpaceId(
          spaceId: event.space.id, userId: _userManager.userUID!);
      if(employee != null){
        await _userManager.setSpace(space: event.space, spaceUser: employee);
        emit(state.copy(selectSpaceStatus: Status.success));
      } else{
        emit(state.copy(
            selectSpaceStatus: Status.failure, error: firestoreFetchDataError));
      }
    } on Exception {
      emit(state.copy(
          selectSpaceStatus: Status.failure, error: firestoreFetchDataError));
    }
  }
}