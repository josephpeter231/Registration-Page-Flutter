// ignore_for_file: must_be_immutable

part of 'login_reset_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginResetPassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginResetPasswordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LoginResetPassword widget is first created.
class LoginResetPasswordInitialEvent extends LoginResetPasswordEvent {
  @override
  List<Object?> get props => [];
}
