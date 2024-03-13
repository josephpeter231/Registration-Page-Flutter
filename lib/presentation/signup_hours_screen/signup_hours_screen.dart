import 'models/signup_hours_model.dart';
import 'models/fortyseven_item_model.dart';
import '../signup_hours_screen/widgets/fortyseven_item_widget.dart';
import 'models/fifty_item_model.dart';
import '../signup_hours_screen/widgets/fifty_item_widget.dart';
import 'package:task/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';
import 'bloc/signup_hours_bloc.dart';

class SignupHoursScreen extends StatelessWidget {
  const SignupHoursScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupHoursBloc>(
      create: (context) => SignupHoursBloc(SignupHoursState(
        signupHoursModelObj: SignupHoursModel(),
      ))
        ..add(SignupHoursInitialEvent()),
      child: SignupHoursScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              SizedBox(height: 32.v),
              Text(
                "lbl_signup_4_of_4".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 5.v),
              Text(
                "lbl_business_hours".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 24.v),
              Container(
                width: 314.h,
                margin: EdgeInsets.only(right: 15.h),
                child: Text(
                  "msg_choose_the_hours".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 36.v),
              _buildFortySeven(context),
              SizedBox(height: 30.v),
              _buildFifty(context),
              Spacer(),
              SizedBox(height: 16.v),
              _buildFiftyTwo(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
    return BlocSelector<SignupHoursBloc, SignupHoursState, SignupHoursModel?>(
      selector: (state) => state.signupHoursModelObj,
      builder: (context, signupHoursModelObj) {
        return Wrap(
          runSpacing: 12.v,
          spacing: 12.h,
          children: List<Widget>.generate(
            signupHoursModelObj?.fortysevenItemList.length ?? 0,
            (index) {
              FortysevenItemModel model =
                  signupHoursModelObj?.fortysevenItemList[index] ??
                      FortysevenItemModel();

              return FortysevenItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<SignupHoursBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFifty(BuildContext context) {
    return BlocSelector<SignupHoursBloc, SignupHoursState, SignupHoursModel?>(
      selector: (state) => state.signupHoursModelObj,
      builder: (context, signupHoursModelObj) {
        return Wrap(
          runSpacing: 10.v,
          spacing: 10.h,
          children: List<Widget>.generate(
            signupHoursModelObj?.fiftyItemList.length ?? 0,
            (index) {
              FiftyItemModel model =
                  signupHoursModelObj?.fiftyItemList[index] ?? FiftyItemModel();

              return FiftyItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<SignupHoursBloc>().add(
                      UpdateChipView1Event(index: index, isSelected: value));
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFiftyTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 18.v,
          width: 26.h,
          margin: EdgeInsets.symmetric(vertical: 17.v),
        ),
        CustomElevatedButton(
          width: 226.h,
          text: "lbl_signup".tr,
        ),
      ],
    );
  }
}
