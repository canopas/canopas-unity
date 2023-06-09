import 'package:equatable/equatable.dart';

abstract class AdminEmployeeDetailsLeavesEvents extends Equatable {}

class InitEvents extends AdminEmployeeDetailsLeavesEvents {
  InitEvents({required this.employeeId});

  final String employeeId;

  @override
  List<Object?> get props => [employeeId];
}
