import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:task/presentation/signup_verification_one_screen/models/signup_verification_one_model.dart';
part 'signup_verification_one_event.dart';
part 'signup_verification_one_state.dart';

/// A bloc that manages the state of a SignupVerificationOne according to the event that is dispatched to it.
class SignupVerificationOneBloc
    extends Bloc<SignupVerificationOneEvent, SignupVerificationOneState> {
  SignupVerificationOneBloc(SignupVerificationOneState initialState)
      : super(initialState) {
    on<SignupVerificationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignupVerificationOneInitialEvent event,
    Emitter<SignupVerificationOneState> emit,
  ) async {
    emit(state.copyWith(
      weburlController: TextEditingController(),
    ));
  }
}
