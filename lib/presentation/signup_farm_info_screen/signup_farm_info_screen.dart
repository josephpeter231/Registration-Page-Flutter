import 'package:task/core/utils/validation_functions.dart';
import 'package:task/widgets/custom_text_form_field.dart';
import 'package:task/widgets/custom_drop_down.dart';
import 'models/signup_farm_info_model.dart';
import 'package:task/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';
import 'bloc/signup_farm_info_bloc.dart';

class SignupFarmInfoScreen extends StatelessWidget {
  SignupFarmInfoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupFarmInfoBloc>(
      create: (context) => SignupFarmInfoBloc(SignupFarmInfoState(
        signupFarmInfoModelObj: SignupFarmInfoModel(),
      ))
        ..add(SignupFarmInfoInitialEvent()),
      child: SignupFarmInfoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 37.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_farmereats".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 32.v),
                    Text(
                      "lbl_signup_2_of_4".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "lbl_farm_info".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 37.v),
                    _buildName(context),
                    SizedBox(height: 24.v),
                    _buildName1(context),
                    SizedBox(height: 24.v),
                    _buildStreetaddress(context),
                    SizedBox(height: 24.v),
                    _buildCity(context),
                    SizedBox(height: 24.v),
                    _buildFortySix(context),
                    Spacer(),
                    SizedBox(height: 16.v),
                    _buildFortyEight(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<SignupFarmInfoBloc, SignupFarmInfoState,
        TextEditingController?>(
      selector: (state) => state.nameController,
      builder: (context, nameController) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_business_name".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 10.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgSort,
              height: 15.adaptSize,
              width: 15.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildName1(BuildContext context) {
    return BlocSelector<SignupFarmInfoBloc, SignupFarmInfoState,
        TextEditingController?>(
      selector: (state) => state.nameController1,
      builder: (context, nameController1) {
        return CustomTextFormField(
          controller: nameController1,
          hintText: "lbl_informal_name".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 10.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 15.adaptSize,
              width: 15.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStreetaddress(BuildContext context) {
    return BlocSelector<SignupFarmInfoBloc, SignupFarmInfoState,
        TextEditingController?>(
      selector: (state) => state.streetaddressController,
      builder: (context, streetaddressController) {
        return CustomTextFormField(
          controller: streetaddressController,
          hintText: "lbl_street_address".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 16.v, 10.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgHome,
              height: 16.v,
              width: 15.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return BlocSelector<SignupFarmInfoBloc, SignupFarmInfoState,
        TextEditingController?>(
      selector: (state) => state.cityController,
      builder: (context, cityController) {
        return CustomTextFormField(
          controller: cityController,
          hintText: "lbl_city".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 15.v, 10.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgLinkedin,
              height: 18.v,
              width: 15.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return BlocSelector<SignupFarmInfoBloc, SignupFarmInfoState,
        TextEditingController?>(
      selector: (state) => state.zipcodeController,
      builder: (context, zipcodeController) {
        return CustomTextFormField(
          width: 188.h,
          controller: zipcodeController,
          hintText: "lbl_enter_zipcode".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 13.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocSelector<SignupFarmInfoBloc, SignupFarmInfoState,
            SignupFarmInfoModel?>(
          selector: (state) => state.signupFarmInfoModelObj,
          builder: (context, signupFarmInfoModelObj) {
            return CustomDropDown(
              width: 126.h,
              icon: Container(
                margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    1.h,
                  ),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 13.v,
                  width: 19.h,
                ),
              ),
              hintText: "lbl_state".tr,
              items: signupFarmInfoModelObj?.dropdownItemList ?? [],
            );
          },
        ),
        _buildZipcode(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      width: 226.h,
      text: "lbl_continue".tr,
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 18.v,
          width: 26.h,
          margin: EdgeInsets.symmetric(vertical: 17.v),
        ),
        _buildContinue(context),
      ],
    );
  }
}
