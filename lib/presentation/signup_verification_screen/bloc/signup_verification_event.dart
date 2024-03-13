// ignore_for_file: must_be_immutable

part of 'signup_verification_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupVerification widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupVerificationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SignupVerification widget is first created.
class SignupVerificationInitialEvent extends SignupVerificationEvent {
  @override
  List<Object?> get props => [];
}
