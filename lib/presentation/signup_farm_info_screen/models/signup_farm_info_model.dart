// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:task/core/app_export.dart';

/// This class defines the variables used in the [signup_farm_info_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignupFarmInfoModel extends Equatable {
  SignupFarmInfoModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  SignupFarmInfoModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return SignupFarmInfoModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
