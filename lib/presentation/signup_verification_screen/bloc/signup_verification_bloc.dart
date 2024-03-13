import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:task/presentation/signup_verification_screen/models/signup_verification_model.dart';
part 'signup_verification_event.dart';
part 'signup_verification_state.dart';

/// A bloc that manages the state of a SignupVerification according to the event that is dispatched to it.
class SignupVerificationBloc
    extends Bloc<SignupVerificationEvent, SignupVerificationState> {
  SignupVerificationBloc(SignupVerificationState initialState)
      : super(initialState) {
    on<SignupVerificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignupVerificationInitialEvent event,
    Emitter<SignupVerificationState> emit,
  ) async {}
}
