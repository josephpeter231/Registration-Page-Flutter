// ignore_for_file: must_be_immutable

part of 'login_forgot_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginForgotPassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginForgotPasswordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LoginForgotPassword widget is first created.
class LoginForgotPasswordInitialEvent extends LoginForgotPasswordEvent {
  @override
  List<Object?> get props => [];
}
