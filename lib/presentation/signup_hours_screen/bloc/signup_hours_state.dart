// ignore_for_file: must_be_immutable

part of 'signup_hours_bloc.dart';

/// Represents the state of SignupHours in the application.
class SignupHoursState extends Equatable {
  SignupHoursState({this.signupHoursModelObj});

  SignupHoursModel? signupHoursModelObj;

  @override
  List<Object?> get props => [
        signupHoursModelObj,
      ];

  SignupHoursState copyWith({SignupHoursModel? signupHoursModelObj}) {
    return SignupHoursState(
      signupHoursModelObj: signupHoursModelObj ?? this.signupHoursModelObj,
    );
  }
}
