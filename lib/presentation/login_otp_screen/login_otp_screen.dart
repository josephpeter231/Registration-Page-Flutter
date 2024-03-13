import 'package:task/widgets/custom_pin_code_text_field.dart';
import 'package:task/widgets/custom_elevated_button.dart';
import 'models/login_otp_model.dart';
import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';
import 'bloc/login_otp_bloc.dart';

class LoginOtpScreen extends StatelessWidget {
  const LoginOtpScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginOtpBloc>(
      create: (context) => LoginOtpBloc(LoginOtpState(
        loginOtpModelObj: LoginOtpModel(),
      ))
        ..add(LoginOtpInitialEvent()),
      child: LoginOtpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
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
                "lbl_verify_otp".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 21.v),
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
              BlocSelector<LoginOtpBloc, LoginOtpState, TextEditingController?>(
                selector: (state) => state.otpController,
                builder: (context, otpController) {
                  return CustomPinCodeTextField(
                    context: context,
                    controller: otpController,
                    onChanged: (value) {
                      otpController?.text = value;
                    },
                  );
                },
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "lbl_submit".tr,
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_resend_code".tr,
                  style: CustomTextStyles.titleSmallBlack900.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
