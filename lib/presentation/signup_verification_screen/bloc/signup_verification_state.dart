// ignore_for_file: must_be_immutable

part of 'signup_verification_bloc.dart';

/// Represents the state of SignupVerification in the application.
class SignupVerificationState extends Equatable {
  SignupVerificationState({this.signupVerificationModelObj});

  SignupVerificationModel? signupVerificationModelObj;

  @override
  List<Object?> get props => [
        signupVerificationModelObj,
      ];

  SignupVerificationState copyWith(
      {SignupVerificationModel? signupVerificationModelObj}) {
    return SignupVerificationState(
      signupVerificationModelObj:
          signupVerificationModelObj ?? this.signupVerificationModelObj,
    );
  }
}
