import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:task/presentation/login_reset_password_screen/models/login_reset_password_model.dart';
part 'login_reset_password_event.dart';
part 'login_reset_password_state.dart';

/// A bloc that manages the state of a LoginResetPassword according to the event that is dispatched to it.
class LoginResetPasswordBloc
    extends Bloc<LoginResetPasswordEvent, LoginResetPasswordState> {
  LoginResetPasswordBloc(LoginResetPasswordState initialState)
      : super(initialState) {
    on<LoginResetPasswordInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginResetPasswordInitialEvent event,
    Emitter<LoginResetPasswordState> emit,
  ) async {
    emit(state.copyWith(
      newpasswordController: TextEditingController(),
      newpasswordController1: TextEditingController(),
    ));
  }
}
