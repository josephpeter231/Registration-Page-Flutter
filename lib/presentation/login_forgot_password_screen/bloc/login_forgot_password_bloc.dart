import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:task/presentation/login_forgot_password_screen/models/login_forgot_password_model.dart';
part 'login_forgot_password_event.dart';
part 'login_forgot_password_state.dart';

/// A bloc that manages the state of a LoginForgotPassword according to the event that is dispatched to it.
class LoginForgotPasswordBloc
    extends Bloc<LoginForgotPasswordEvent, LoginForgotPasswordState> {
  LoginForgotPasswordBloc(LoginForgotPasswordState initialState)
      : super(initialState) {
    on<LoginForgotPasswordInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginForgotPasswordInitialEvent event,
    Emitter<LoginForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}
