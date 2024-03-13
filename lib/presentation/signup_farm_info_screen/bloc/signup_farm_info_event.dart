// ignore_for_file: must_be_immutable

part of 'signup_farm_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupFarmInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupFarmInfoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SignupFarmInfo widget is first created.
class SignupFarmInfoInitialEvent extends SignupFarmInfoEvent {
  @override
  List<Object?> get props => [];
}
