import 'package:task/core/utils/validation_functions.dart';
import 'package:task/widgets/custom_text_form_field.dart';
import 'package:task/widgets/custom_elevated_button.dart';
import 'models/login_forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';
import 'bloc/login_forgot_password_bloc.dart';

class LoginForgotPasswordScreen extends StatelessWidget {
  LoginForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginForgotPasswordBloc>(
      create: (context) => LoginForgotPasswordBloc(LoginForgotPasswordState(
        loginForgotPasswordModelObj: LoginForgotPasswordModel(),
      ))
        ..add(LoginForgotPasswordInitialEvent()),
      child: LoginForgotPasswordScreen(),
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
                    SizedBox(height: 93.v),
                    Text(
                      "msg_forgot_password".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 20.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_remember_your_pasword2".tr,
                            style: CustomTextStyles.titleSmall4c000000,
                          ),
                          TextSpan(
                            text: "lbl".tr,
                            style: CustomTextStyles.titleSmall4c000000,
                          ),
                          TextSpan(
                            text: "lbl_login".tr,
                            style: CustomTextStyles.titleSmallffd5715b,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 68.v),
                    BlocSelector<LoginForgotPasswordBloc,
                        LoginForgotPasswordState, TextEditingController?>(
                      selector: (state) => state.phoneNumberController,
                      builder: (context, phoneNumberController) {
                        return CustomTextFormField(
                          controller: phoneNumberController,
                          hintText: "lbl_phone_number".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.phone,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(16.h, 16.v, 10.h, 16.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCall,
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 48.v,
                          ),
                          validator: (value) {
                            if (!isValidPhone(value)) {
                              return "err_msg_please_enter_valid_phone_number"
                                  .tr;
                            }
                            return null;
                          },
                        );
                      },
                    ),
                    SizedBox(height: 32.v),
                    CustomElevatedButton(
                      text: "lbl_send_code".tr,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
