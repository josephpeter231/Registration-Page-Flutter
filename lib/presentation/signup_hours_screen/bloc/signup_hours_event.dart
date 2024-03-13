// ignore_for_file: must_be_immutable

part of 'signup_hours_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupHours widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupHoursEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SignupHours widget is first created.
class SignupHoursInitialEvent extends SignupHoursEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SignupHoursEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}

///Event for changing ChipView selection
class UpdateChipView1Event extends SignupHoursEvent {
  UpdateChipView1Event({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
