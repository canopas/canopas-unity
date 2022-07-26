import 'package:injectable/injectable.dart';
import 'package:projectunity/core/utils/const/leave_status.dart';
import 'package:projectunity/services/leave/admin_leave_service.dart';

@Singleton()
class UpdateLeaveStatus {
  final AdminLeaveService _adminLeaveService;

  UpdateLeaveStatus(this._adminLeaveService);

  int _leaveStatus = pendingLeaveStatus;
  String? _reason;

  int get leaveStatus => _leaveStatus;

  void updateStatus(int status) {
    _leaveStatus = status;
  }

  String? get reason => _reason;

  void setReason(String? value) {
    _reason = value;
  }

  void addLeaveApproval(String leaveId) {
    if (_leaveStatus == pendingLeaveStatus) {
      return;
    } else if (_leaveStatus != pendingLeaveStatus && reason == null) {
      return;
    }
    Map<String, dynamic> map = <String, dynamic>{
      'leaveStatus': _leaveStatus,
      'rejectionReason': reason
    };
    _adminLeaveService.updateLeaveStatus(leaveId, map);
  }
}
