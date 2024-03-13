// ignore_for_file: must_be_immutable

part of 'signup_verification_one_bloc.dart';

/// Represents the state of SignupVerificationOne in the application.
class SignupVerificationOneState extends Equatable {
  SignupVerificationOneState({
    this.weburlController,
    this.signupVerificationOneModelObj,
  });

  TextEditingController? weburlController;

  SignupVerificationOneModel? signupVerificationOneModelObj;

  @override
  List<Object?> get props => [
        weburlController,
        signupVerificationOneModelObj,
      ];

  SignupVerificationOneState copyWith({
    TextEditingController? weburlController,
    SignupVerificationOneModel? signupVerificationOneModelObj,
  }) {
    return SignupVerificationOneState(
      weburlController: weburlController ?? this.weburlController,
      signupVerificationOneModelObj:
          signupVerificationOneModelObj ?? this.signupVerificationOneModelObj,
    );
  }
}
