import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:projectunity/core/utils/const/firestore.dart';
import 'package:projectunity/exception/error_const.dart';
import 'package:projectunity/model/leave/leave.dart';
import '../../../../services/admin/paid_leave_service.dart';
import '../../../../services/admin/leave_service.dart';
import '../../../../services/user/user_leave_service.dart';
import 'admin_leave_details_event.dart';
import 'admin_leave_details_state.dart';

@Injectable()
class AdminLeaveDetailsBloc extends Bloc<AdminLeaveDetailsEvents,AdminLeaveDetailsState> {
  final UserLeaveService _userLeaveService;
  final PaidLeaveService _paidLeaveService;
  final AdminLeaveService _adminLeaveService;

  AdminLeaveDetailsBloc(this._userLeaveService,
      this._adminLeaveService, this._paidLeaveService)
      : super(const AdminLeaveDetailsState()) {
    on<AdminLeaveDetailsInitialLoadEvents>(_initLeaveCounts);
    on<AdminLeaveDetailsApproveRequestEvent>(_approveLeave);
    on<AdminLeaveDetailsRejectRequestEvent>(_rejectLeave);
    on<AdminLeaveDetailsChangeAdminReplyValue>(_onReplyChange);
  }
  
  
  Future<void> _initLeaveCounts(AdminLeaveDetailsInitialLoadEvents event, Emitter<AdminLeaveDetailsState> emit) async {
    emit(state.copyWith(leaveDetailsLeaveCountStatus: AdminLeaveDetailsLeaveCountStatus.loading));
    if (event.leaveApplication.leaveCounts != null) {
      emit(state.copyWith(
          leaveDetailsLeaveCountStatus: AdminLeaveDetailsLeaveCountStatus.success,
          paidLeaveCount:event.leaveApplication.leaveCounts!.paidLeaveCount,
          remainingLeaveCount:  event.leaveApplication.leaveCounts!.remainingLeaveCount ));
    } else {
      try {
        int paidLeaves = await _paidLeaveService.getPaidLeaves();
        double usedLeave = await _userLeaveService
            .getUserUsedLeaveCount(event.leaveApplication.employee.id);
        double remainingLeaves = paidLeaves - usedLeave;
        emit(state.copyWith(
            leaveDetailsLeaveCountStatus: AdminLeaveDetailsLeaveCountStatus.success,
            paidLeaveCount: paidLeaves,
            remainingLeaveCount: remainingLeaves < 0 ? 0 : remainingLeaves));
      } on Exception {
        emit(state.copyWith(error: firestoreFetchDataError,leaveDetailsLeaveCountStatus:AdminLeaveDetailsLeaveCountStatus.failure));
      }
    }
  }

  void _approveLeave(AdminLeaveDetailsApproveRequestEvent event, Emitter<AdminLeaveDetailsState> emit) {
    emit(state.copyWith(leaveDetailsStatus: AdminLeaveDetailsStatus.approveLoading));
    Map<String, dynamic> map =
    _setLeaveApproval(approveLeaveStatus, state.adminReply);
    try {
      _adminLeaveService.updateLeaveStatus(event.leaveId, map);
      emit(state.copyWith(leaveDetailsStatus:AdminLeaveDetailsStatus.success));
    } on Exception {
      emit(state.copyWith(error: firestoreFetchDataError,leaveDetailsStatus:AdminLeaveDetailsStatus.failure));
    }
  }

  void _rejectLeave(
      AdminLeaveDetailsRejectRequestEvent event, Emitter<AdminLeaveDetailsState> emit) {
    emit(state.copyWith(leaveDetailsStatus: AdminLeaveDetailsStatus.rejectLoading));
    Map<String, dynamic> map =
    _setLeaveApproval(rejectLeaveStatus, state.adminReply);
    try {
      _adminLeaveService.updateLeaveStatus(event.leaveId, map);
      emit(state.copyWith(leaveDetailsStatus:AdminLeaveDetailsStatus.success));
    } on Exception {
      emit(state.copyWith(error: firestoreFetchDataError,leaveDetailsStatus:AdminLeaveDetailsStatus.failure));
    }
  }



  void _onReplyChange(AdminLeaveDetailsChangeAdminReplyValue event,
      Emitter<AdminLeaveDetailsState> emit) {
    emit(state.copyWith(adminReply: event.adminReply));
  }

  Map<String, dynamic> _setLeaveApproval(int leaveStatus, String reason) {
    Map<String, dynamic> map = <String, dynamic>{
      FirestoreConst.leaveStatus: leaveStatus,
      FirestoreConst.rejectionReason: reason,
    };
    return map;
  }
}
