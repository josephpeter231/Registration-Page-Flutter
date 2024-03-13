// ignore_for_file: must_be_immutable

part of 'signup_verification_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupVerificationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupVerificationOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SignupVerificationOne widget is first created.
class SignupVerificationOneInitialEvent extends SignupVerificationOneEvent {
  @override
  List<Object?> get props => [];
}
