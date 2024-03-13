// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [fortyseven_item_widget] screen.
class FortysevenItemModel extends Equatable {
  FortysevenItemModel({
    this.m,
    this.isSelected,
  }) {
    m = m ?? "M";
    isSelected = isSelected ?? false;
  }

  String? m;

  bool? isSelected;

  FortysevenItemModel copyWith({
    String? m,
    bool? isSelected,
  }) {
    return FortysevenItemModel(
      m: m ?? this.m,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [m, isSelected];
}
