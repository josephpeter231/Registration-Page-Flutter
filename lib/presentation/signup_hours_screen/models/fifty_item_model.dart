// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [fifty_item_widget] screen.
class FiftyItemModel extends Equatable {
  FiftyItemModel({
    this.amam,
    this.isSelected,
  }) {
    amam = amam ?? "8:00am - 10:00am";
    isSelected = isSelected ?? false;
  }

  String? amam;

  bool? isSelected;

  FiftyItemModel copyWith({
    String? amam,
    bool? isSelected,
  }) {
    return FiftyItemModel(
      amam: amam ?? this.amam,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [amam, isSelected];
}
