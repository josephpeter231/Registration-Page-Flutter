// ignore_for_file: must_be_immutable

part of 'signup_confirmation_bloc.dart';

/// Represents the state of SignupConfirmation in the application.
class SignupConfirmationState extends Equatable {
  SignupConfirmationState({this.signupConfirmationModelObj});

  SignupConfirmationModel? signupConfirmationModelObj;

  @override
  List<Object?> get props => [
        signupConfirmationModelObj,
      ];

  SignupConfirmationState copyWith(
      {SignupConfirmationModel? signupConfirmationModelObj}) {
    return SignupConfirmationState(
      signupConfirmationModelObj:
          signupConfirmationModelObj ?? this.signupConfirmationModelObj,
    );
  }
}
