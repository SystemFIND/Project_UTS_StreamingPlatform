import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/choose_plan_screen/choose_plan_screen.dart';
import '../presentation/edit_profile_screen/edit_profile_screen.dart';
import '../presentation/episode_screen/episode_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/history_screen/history_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/language_screen/language_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/no_notification_screen/no_notification_screen.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/otp_verification_screen/otp_verification_screen.dart';
import '../presentation/payment_method_screen/payment_method_screen.dart';
import '../presentation/reset_password_screen/reset_password_screen.dart';
import '../presentation/reset_password_success_screen/reset_password_success_screen.dart';
import '../presentation/setting_screen/setting_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';


class AppRoutes {
  static const String splashScreen = '/splash_screen'; 

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordSuccessScreen = '/reset_password_success_screen';

  static const String homeScreen = '/home_screen';

  static const String homeInitialPage = '/home_initial_page';

  static const String categoryComedyScreen = '/category_comedy_screen';

  static const String episodeScreen = '/episode_screen';

  static const String episodeepisodeiTabPage = '/episodeepisodei_tab_page';

  static const String similiarPage = '/similiar_page';

  static const String aboutPage = '/about_page';

  static const String choosePlanScreen = '/choose_plan_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String searchPage = '/search_page';

  static const String notFoundScreen = '/not_found_screen';

  static const String downloadedPage = '/downloaded_page';

  static const String emptyStateDownloadedScreen = '/empty_state_downloaded_screen';

  static const String savedPage = '/saved_page';

  static const String savedEmptyScreen = '/saved_empty_screen';

  static const String profilePage = '/profile_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationScreen = '/notification_screen';

  static const String noNotificationScreen = '/no_notification_screen';

  static const String historyScreen = '/history_screen';

  static const String noHistoryScreen = '/no_history_screen';

  static const String settingScreen = '/setting_screen';

  static const String languageScreen = '/language_screen';

  static const String helpScreen = '/help_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    otpVerificationScreen: (context) => OtpVerificationScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    resetPasswordSuccessScreen: (context) => ResetPasswordSuccessScreen(),
    homeScreen: (context) => HomeScreen(),
    episodeScreen: (context) => EpisodeScreen(),
    choosePlanScreen: (context) => ChoosePlanScreen(),
    paymentMethodScreen: (context) => PaymentMethodScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    notificationScreen: (context) => NotificationScreen(),
    noNotificationScreen: (context) => NoNotificationScreen(),
    historyScreen: (context) => HistoryScreen(),
    settingScreen: (context) => SettingScreen(),
    languageScreen: (context) => LanguageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
  };
}
