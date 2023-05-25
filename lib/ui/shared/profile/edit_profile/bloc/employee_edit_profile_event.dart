import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

abstract class EditProfileEvent extends Equatable {}

class EditProfileInitialLoadEvent extends EditProfileEvent {
  final int? gender;
  final int? dateOfBirth;

  EditProfileInitialLoadEvent(
      {required this.gender, required this.dateOfBirth});

  @override
  List<Object?> get props => [gender, dateOfBirth];
}

class EditProfileNameChangedEvent extends EditProfileEvent {
  final String name;

  EditProfileNameChangedEvent({required this.name});

  @override
  List<Object?> get props => [name];
}

class EditProfileChangeDateOfBirthEvent extends EditProfileEvent {
  final DateTime? dateOfBirth;

  EditProfileChangeDateOfBirthEvent({required this.dateOfBirth});

  @override
  List<Object?> get props => [dateOfBirth];
}

class EditProfileChangeGenderEvent extends EditProfileEvent {
  final int? gender;

  EditProfileChangeGenderEvent({
    required this.gender,
  });

  @override
  List<Object?> get props => [gender];
}

class ChangeImageEvent extends EditProfileEvent {
  final ImageSource imageSource;

  ChangeImageEvent({required this.imageSource});

  @override
  List<Object?> get props => [imageSource];
}

class EditProfileUpdateProfileEvent extends EditProfileEvent {
  final String name;
  final String designation;
  final String level;
  final String phoneNumber;
  final String address;

  EditProfileUpdateProfileEvent(
      {required this.name,
      required this.designation,
      required this.phoneNumber,
      required this.address,
      required this.level});

  @override
  List<Object?> get props => [name, designation, level, phoneNumber, address];
}