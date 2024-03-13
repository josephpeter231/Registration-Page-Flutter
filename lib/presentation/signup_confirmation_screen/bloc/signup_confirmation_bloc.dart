import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:task/presentation/signup_confirmation_screen/models/signup_confirmation_model.dart';
part 'signup_confirmation_event.dart';
part 'signup_confirmation_state.dart';

/// A bloc that manages the state of a SignupConfirmation according to the event that is dispatched to it.
class SignupConfirmationBloc
    extends Bloc<SignupConfirmationEvent, SignupConfirmationState> {
  SignupConfirmationBloc(SignupConfirmationState initialState)
      : super(initialState) {
    on<SignupConfirmationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignupConfirmationInitialEvent event,
    Emitter<SignupConfirmationState> emit,
  ) async {}
}
