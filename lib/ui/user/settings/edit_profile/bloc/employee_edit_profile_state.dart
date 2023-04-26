import 'package:equatable/equatable.dart';

enum EmployeeEditProfileStatus { initial, loading, success, failure }

class EmployeeEditProfileState extends Equatable {
  final EmployeeEditProfileStatus status;
  final int? gender;
  final DateTime? dateOfBirth;
  final bool nameError;
  final String? error;
  final String? imageURL;

  const EmployeeEditProfileState({
    this.gender,
    this.dateOfBirth,
    this.status = EmployeeEditProfileStatus.initial,
    this.error,
    this.nameError = false,
    this.imageURL,
  });

  bool get isDataValid => !nameError;

  copyWith({
    int? gender,
    DateTime? dateOfBirth,
    bool? nameError,
    String? error,
    EmployeeEditProfileStatus? status,
    String? imageURL,
  }) {
    return EmployeeEditProfileState(
        gender: gender ?? this.gender,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        error: error,
        nameError: nameError ?? this.nameError,
        status: status ?? this.status,
        imageURL: imageURL ?? this.imageURL);
  }

  changeDateOfBirth({DateTime? dateOfBirth}) {
    return EmployeeEditProfileState(
      status: status,
      dateOfBirth: dateOfBirth,
      nameError: nameError,
      error: error,
      gender: gender,
      imageURL: imageURL,
    );
  }

  changeGender({int? gender}) {
    return EmployeeEditProfileState(
      status: status,
      dateOfBirth: dateOfBirth,
      nameError: nameError,
      error: error,
      gender: gender,
      imageURL: imageURL,
    );
  }

  @override
  List<Object?> get props =>
      [gender, dateOfBirth, status, nameError, error, imageURL];
}
