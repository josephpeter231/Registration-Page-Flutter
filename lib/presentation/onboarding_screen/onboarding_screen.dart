import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/widgets/custom_elevated_button.dart';
import 'models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';
import 'bloc/onboarding_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
        create: (context) => OnboardingBloc(
            OnboardingState(onboardingModelObj: OnboardingModel()))
          ..add(OnboardingInitialEvent()),
        child: OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.green500,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 32.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup44,
                          height: 372.v,
                          width: 390.h),
                      SizedBox(height: 19.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.h, vertical: 35.v),
                          decoration: AppDecoration.white.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder52),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("lbl_quality".tr,
                                style: CustomTextStyles.headlineSmallBlack900),
                            SizedBox(height: 36.v),
                            SizedBox(
                                width: 310.h,
                                child: Text("msg_sell_your_farm_fresh".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyMediumPrimaryContainer)),
                            SizedBox(height: 43.v),
                            SizedBox(
                                height: 7.v,
                                child: AnimatedSmoothIndicator(
                                    activeIndex: 0,
                                    count: 3,
                                    effect: ScrollingDotsEffect(
                                        spacing: 8,
                                        activeDotColor:
                                            theme.colorScheme.primaryContainer,
                                        dotColor:
                                            theme.colorScheme.primaryContainer,
                                        dotHeight: 7.v,
                                        dotWidth: 7.h))),
                            SizedBox(height: 60.v),
                            CustomElevatedButton(
                                height: 60.v,
                                text: "msg_join_the_movement".tr,
                                margin: EdgeInsets.symmetric(horizontal: 37.h),
                                buttonStyle: CustomButtonStyles.fillGreen),
                            SizedBox(height: 18.v),
                            Text("lbl_login".tr,
                                style: CustomTextStyles
                                    .titleSmallPrimaryContainer
                                    .copyWith(
                                        decoration: TextDecoration.underline)),
                            SizedBox(height: 5.v)
                          ]))
                    ])))
                  ]))));
    });
  }
}
