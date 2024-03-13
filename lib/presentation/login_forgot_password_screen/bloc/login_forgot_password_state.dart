// ignore_for_file: must_be_immutable

part of 'login_forgot_password_bloc.dart';

/// Represents the state of LoginForgotPassword in the application.
class LoginForgotPasswordState extends Equatable {
  LoginForgotPasswordState({
    this.phoneNumberController,
    this.loginForgotPasswordModelObj,
  });

  TextEditingController? phoneNumberController;

  LoginForgotPasswordModel? loginForgotPasswordModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        loginForgotPasswordModelObj,
      ];

  LoginForgotPasswordState copyWith({
    TextEditingController? phoneNumberController,
    LoginForgotPasswordModel? loginForgotPasswordModelObj,
  }) {
    return LoginForgotPasswordState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      loginForgotPasswordModelObj:
          loginForgotPasswordModelObj ?? this.loginForgotPasswordModelObj,
    );
  }
}
