import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/widgets/custom_elevated_button.dart';
import 'models/onboarding_one_model.dart';
import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';
import 'bloc/onboarding_one_bloc.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingOneBloc>(
      create: (context) => OnboardingOneBloc(OnboardingOneState(
        onboardingOneModelObj: OnboardingOneModel(),
      ))
        ..add(OnboardingOneInitialEvent()),
      child: OnboardingOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingOneBloc, OnboardingOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 26.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    height: 377.v,
                    width: 390.h,
                  ),
                  SizedBox(height: 18.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 53.h,
                      vertical: 33.v,
                    ),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder49,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "lbl_convenient".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 39.v),
                        SizedBox(
                          width: 283.h,
                          child: Text(
                            "msg_our_team_of_delivery".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumPrimaryContainer,
                          ),
                        ),
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
                          margin: EdgeInsets.symmetric(horizontal: 23.h),
                          buttonStyle: CustomButtonStyles.fillPrimary,
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
