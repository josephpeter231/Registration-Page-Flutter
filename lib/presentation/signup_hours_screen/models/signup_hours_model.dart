// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'fortyseven_item_model.dart';
import 'fifty_item_model.dart';

/// This class defines the variables used in the [signup_hours_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignupHoursModel extends Equatable {
  SignupHoursModel({
    this.fortysevenItemList = const [],
    this.fiftyItemList = const [],
  }) {}

  List<FortysevenItemModel> fortysevenItemList;

  List<FiftyItemModel> fiftyItemList;

  SignupHoursModel copyWith({
    List<FortysevenItemModel>? fortysevenItemList,
    List<FiftyItemModel>? fiftyItemList,
  }) {
    return SignupHoursModel(
      fortysevenItemList: fortysevenItemList ?? this.fortysevenItemList,
      fiftyItemList: fiftyItemList ?? this.fiftyItemList,
    );
  }

  @override
  List<Object?> get props => [fortysevenItemList, fiftyItemList];
}
