// ignore_for_file: must_be_immutable

part of 'login_otp_bloc.dart';

/// Represents the state of LoginOtp in the application.
class LoginOtpState extends Equatable {
  LoginOtpState({
    this.otpController,
    this.loginOtpModelObj,
  });

  TextEditingController? otpController;

  LoginOtpModel? loginOtpModelObj;

  @override
  List<Object?> get props => [
        otpController,
        loginOtpModelObj,
      ];

  LoginOtpState copyWith({
    TextEditingController? otpController,
    LoginOtpModel? loginOtpModelObj,
  }) {
    return LoginOtpState(
      otpController: otpController ?? this.otpController,
      loginOtpModelObj: loginOtpModelObj ?? this.loginOtpModelObj,
    );
  }
}
