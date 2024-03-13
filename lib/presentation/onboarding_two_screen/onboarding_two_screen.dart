import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/widgets/custom_elevated_button.dart';
import 'models/onboarding_two_model.dart';
import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';
import 'bloc/onboarding_two_bloc.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingTwoBloc>(
      create: (context) => OnboardingTwoBloc(OnboardingTwoState(
        onboardingTwoModelObj: OnboardingTwoModel(),
      ))
        ..add(OnboardingTwoInitialEvent()),
      child: OnboardingTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingTwoBloc, OnboardingTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.orange200,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 20.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup46,
                    height: 383.v,
                    width: 390.h,
                  ),
                  SizedBox(height: 18.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 36.h,
                      vertical: 34.v,
                    ),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder49,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "lbl_local".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 39.v),
                        SizedBox(
                          width: 315.h,
                          child: Text(
                            "msg_we_love_the_earth".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumPrimaryContainer,
                          ),
                        ),
                        SizedBox(height: 44.v),
                        SizedBox(
                          height: 7.v,
                          child: AnimatedSmoothIndicator(
                            activeIndex: 0,
                            count: 3,
                            effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor:
                                  theme.colorScheme.primaryContainer,
                              dotColor: theme.colorScheme.primaryContainer,
                              dotHeight: 7.v,
                              dotWidth: 7.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 60.v),
                        CustomElevatedButton(
                          height: 60.v,
                          text: "msg_join_the_movement".tr,
                          margin: EdgeInsets.symmetric(horizontal: 40.h),
                          buttonStyle: CustomButtonStyles.fillOrange,
                        ),
                        SizedBox(height: 18.v),
                        Text(
                          "lbl_login".tr,
                          style: CustomTextStyles.titleSmallPrimaryContainer
                              .copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 6.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
