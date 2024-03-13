// ignore_for_file: must_be_immutable

part of 'signup_confirmation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupConfirmation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupConfirmationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SignupConfirmation widget is first created.
class SignupConfirmationInitialEvent extends SignupConfirmationEvent {
  @override
  List<Object?> get props => [];
}
