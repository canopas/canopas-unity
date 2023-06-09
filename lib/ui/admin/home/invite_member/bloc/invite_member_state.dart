import 'package:equatable/equatable.dart';
import '../../../../../data/core/utils/bloc_status.dart';

class InviteMemberState extends Equatable {
  final Status status;
  final String? error;
  final String email;
  final bool emailError;

  const InviteMemberState(
      {this.status = Status.initial,
      this.error,
      this.email = '',
      this.emailError = false});

  InviteMemberState copyWith(
      {Status? status, String? error, String? email, bool? emailError}) {
    return InviteMemberState(
        status: status ?? this.status,
        error: error,
        email: email ?? this.email,
        emailError: emailError ?? this.emailError);
  }

  @override
  List<Object?> get props => [status, error, email, emailError];
}
