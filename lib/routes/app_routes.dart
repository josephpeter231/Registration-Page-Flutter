import 'package:flutter/material.dart';
import '../presentation/onboarding_screen/onboarding_screen.dart';
import '../presentation/onboarding_one_screen/onboarding_one_screen.dart';
import '../presentation/onboarding_two_screen/onboarding_two_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_forgot_password_screen/login_forgot_password_screen.dart';
import '../presentation/login_otp_screen/login_otp_screen.dart';
import '../presentation/login_reset_password_screen/login_reset_password_screen.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/signup_farm_info_screen/signup_farm_info_screen.dart';
import '../presentation/signup_verification_screen/signup_verification_screen.dart';
import '../presentation/signup_hours_screen/signup_hours_screen.dart';
import '../presentation/signup_verification_one_screen/signup_verification_one_screen.dart';
import '../presentation/signup_confirmation_screen/signup_confirmation_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String loginScreen = '/login_screen';

  static const String loginForgotPasswordScreen =
      '/login_forgot_password_screen';

  static const String loginOtpScreen = '/login_otp_screen';

  static const String loginResetPasswordScreen = '/login_reset_password_screen';

  static const String signupScreen = '/signup_screen';

  static const String signupFarmInfoScreen = '/signup_farm_info_screen';

  static const String signupVerificationScreen = '/signup_verification_screen';

  static const String signupHoursScreen = '/signup_hours_screen';

  static const String signupVerificationOneScreen =
      '/signup_verification_one_screen';

  static const String signupConfirmationScreen = '/signup_confirmation_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingScreen: OnboardingScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        loginScreen: LoginScreen.builder,
        loginForgotPasswordScreen: LoginForgotPasswordScreen.builder,
        loginOtpScreen: LoginOtpScreen.builder,
        loginResetPasswordScreen: LoginResetPasswordScreen.builder,
        signupScreen: SignupScreen.builder,
        signupFarmInfoScreen: SignupFarmInfoScreen.builder,
        signupVerificationScreen: SignupVerificationScreen.builder,
        signupHoursScreen: SignupHoursScreen.builder,
        signupVerificationOneScreen: SignupVerificationOneScreen.builder,
        signupConfirmationScreen: SignupConfirmationScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingScreen.builder
      };
}
