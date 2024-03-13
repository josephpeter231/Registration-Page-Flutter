// ignore_for_file: must_be_immutable

part of 'login_otp_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginOtp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginOtpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LoginOtp widget is first created.
class LoginOtpInitialEvent extends LoginOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends LoginOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
