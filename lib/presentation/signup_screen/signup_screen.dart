import 'package:task/core/utils/validation_functions.dart';
import 'package:task/widgets/custom_text_form_field.dart';
import 'package:task/widgets/custom_elevated_button.dart';
import 'models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';
import 'bloc/signup_bloc.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupBloc>(
        create: (context) =>
            SignupBloc(SignupState(signupModelObj: SignupModel()))
              ..add(SignupInitialEvent()),
        child: SignupScreen());
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
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.h, vertical: 37.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_farmereats".tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 32.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_signup_1_of_4".tr,
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(height: 2.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_welcome".tr,
                                      style: theme.textTheme.headlineLarge)),
                              SizedBox(height: 37.v),
                              _buildFiftySeven(context),
                              SizedBox(height: 33.v),
                              Text("lbl_or_signup_with".tr,
                                  style: theme.textTheme.labelMedium),
                              SizedBox(height: 30.v),
                              _buildFullName(context),
                              SizedBox(height: 24.v),
                              _buildEmail(context),
                              SizedBox(height: 24.v),
                              _buildPhoneNumber(context),
                              SizedBox(height: 24.v),
                              _buildPassword(context),
                              SizedBox(height: 24.v),
                              _buildPassword1(context),
                              SizedBox(height: 69.v),
                              _buildFortyNine(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: appTheme.black900.withOpacity(0.08), width: 1.h),
              borderRadius: BorderRadiusStyle.circleBorder26),
          child: Container(
              height: 52.v,
              width: 96.h,
              padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 12.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
              child: Stack(alignment: Alignment.centerRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGoogle,
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                    alignment: Alignment.center,
                    onTap: () {
                      onTapImgGoogle(context);
                    }),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 9.v,
                                  width: 19.h),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 15.v,
                                      width: 23.h,
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgMobile,
                                                height: 9.v,
                                                width: 19.h,
                                                alignment:
                                                    Alignment.bottomLeft),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowLeft,
                                                height: 11.v,
                                                width: 12.h,
                                                alignment: Alignment.topRight)
                                          ])))
                            ])))
              ]))),
      Container(
          height: 52.v,
          width: 96.h,
          padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 10.v),
          decoration: AppDecoration.outlineBlack900
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
          child: CustomImageView(
              imagePath: ImageConstant.imgIcons8AppleLogo,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center)),
      Container(
          height: 52.v,
          width: 96.h,
          padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 10.v),
          decoration: AppDecoration.outlineBlack900
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
          child: CustomImageView(
              imagePath: ImageConstant.imgFacebookSecondarycontainer,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapImgFacebook(context);
              }))
    ]);
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return BlocSelector<SignupBloc, SignupState, TextEditingController?>(
        selector: (state) => state.fullNameController,
        builder: (context, fullNameController) {
          return CustomTextFormField(
              controller: fullNameController,
              hintText: "lbl_full_name".tr,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 16.v, 10.h, 16.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 15.adaptSize,
                      width: 15.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<SignupBloc, SignupState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "lbl_email_address".tr,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 16.v, 10.h, 16.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 15.adaptSize,
                      width: 15.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocSelector<SignupBloc, SignupState, TextEditingController?>(
        selector: (state) => state.phoneNumberController,
        builder: (context, phoneNumberController) {
          return CustomTextFormField(
              controller: phoneNumberController,
              hintText: "lbl_phone_number".tr,
              textInputType: TextInputType.phone,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 16.v, 10.h, 16.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCall,
                      height: 15.adaptSize,
                      width: 15.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocSelector<SignupBloc, SignupState, TextEditingController?>(
        selector: (state) => state.passwordController,
        builder: (context, passwordController) {
          return CustomTextFormField(
              controller: passwordController,
              hintText: "lbl_password".tr,
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 14.v, 10.h, 14.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 19.v,
                      width: 15.h)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true);
        });
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return BlocSelector<SignupBloc, SignupState, TextEditingController?>(
        selector: (state) => state.passwordController1,
        builder: (context, passwordController1) {
          return CustomTextFormField(
              controller: passwordController1,
              hintText: "msg_re_enter_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 14.v, 10.h, 14.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 19.v,
                      width: 15.h)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true);
        });
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(width: 226.h, text: "lbl_continue".tr);
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 18.v, bottom: 12.v),
          child: Text("lbl_login".tr,
              style: CustomTextStyles.bodyMediumBlack900
                  .copyWith(decoration: TextDecoration.underline))),
      _buildContinue(context)
    ]);
  }
}
