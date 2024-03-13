import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:task/presentation/login_otp_screen/models/login_otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'login_otp_event.dart';
part 'login_otp_state.dart';

/// A bloc that manages the state of a LoginOtp according to the event that is dispatched to it.
class LoginOtpBloc extends Bloc<LoginOtpEvent, LoginOtpState>
    with CodeAutoFill {
  LoginOtpBloc(LoginOtpState initialState) : super(initialState) {
    on<LoginOtpInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<LoginOtpState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    LoginOtpInitialEvent event,
    Emitter<LoginOtpState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
