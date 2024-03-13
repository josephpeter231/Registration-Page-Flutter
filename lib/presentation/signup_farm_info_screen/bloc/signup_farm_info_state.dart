// ignore_for_file: must_be_immutable

part of 'signup_farm_info_bloc.dart';

/// Represents the state of SignupFarmInfo in the application.
class SignupFarmInfoState extends Equatable {
  SignupFarmInfoState({
    this.nameController,
    this.nameController1,
    this.streetaddressController,
    this.cityController,
    this.zipcodeController,
    this.selectedDropDownValue,
    this.signupFarmInfoModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? nameController1;

  TextEditingController? streetaddressController;

  TextEditingController? cityController;

  TextEditingController? zipcodeController;

  SelectionPopupModel? selectedDropDownValue;

  SignupFarmInfoModel? signupFarmInfoModelObj;

  @override
  List<Object?> get props => [
        nameController,
        nameController1,
        streetaddressController,
        cityController,
        zipcodeController,
        selectedDropDownValue,
        signupFarmInfoModelObj,
      ];

  SignupFarmInfoState copyWith({
    TextEditingController? nameController,
    TextEditingController? nameController1,
    TextEditingController? streetaddressController,
    TextEditingController? cityController,
    TextEditingController? zipcodeController,
    SelectionPopupModel? selectedDropDownValue,
    SignupFarmInfoModel? signupFarmInfoModelObj,
  }) {
    return SignupFarmInfoState(
      nameController: nameController ?? this.nameController,
      nameController1: nameController1 ?? this.nameController1,
      streetaddressController:
          streetaddressController ?? this.streetaddressController,
      cityController: cityController ?? this.cityController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      signupFarmInfoModelObj:
          signupFarmInfoModelObj ?? this.signupFarmInfoModelObj,
    );
  }
}
