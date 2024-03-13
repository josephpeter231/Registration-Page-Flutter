// ignore_for_file: must_be_immutable

part of 'login_reset_password_bloc.dart';

/// Represents the state of LoginResetPassword in the application.
class LoginResetPasswordState extends Equatable {
  LoginResetPasswordState({
    this.newpasswordController,
    this.newpasswordController1,
    this.loginResetPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? newpasswordController1;

  LoginResetPasswordModel? loginResetPasswordModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        newpasswordController1,
        loginResetPasswordModelObj,
      ];

  LoginResetPasswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? newpasswordController1,
    LoginResetPasswordModel? loginResetPasswordModelObj,
  }) {
    return LoginResetPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      newpasswordController1:
          newpasswordController1 ?? this.newpasswordController1,
      loginResetPasswordModelObj:
          loginResetPasswordModelObj ?? this.loginResetPasswordModelObj,
    );
  }
}
