// lib/Presentation/app_navigation_screen
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../delete_from_saved_dialog/delete_from_saved_dialog.dart';
import '../delete_popup_dialog/delete_popup_dialog.dart';
import '../download_movie_pop_up_dialog/download_movie_pop_up_dialog.dart';
import '../history_delete_dialog/history_delete_dialog.dart';
import '../logout_dialog/logout_dialog.dart';
import '../payment_succesful_popup_dialog/payment_succesful_popup_dialog.dart';
import '../subscribe_popup_dialog/subscribe_popup_dialog.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
        key: key,
      );
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 20.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 16.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: Color(0XFF000000),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot password",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP Verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.otpVerificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password - Succses",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.resetPasswordSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Category Comedy",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.categoryComedyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Episode",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.episodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscribe popup - Dialog",
                          onTapScreenTitle: () => 
                              onTapDialogTitle(context, SubscribePopupDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Choose Plan",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.choosePlanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Method",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.paymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Succsesful Popup - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                            context, PaymentSuccesfulPopupDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Download Movie Pop up - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                            context, DownloadMoviePopUpDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Not Found",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.notFoundScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Delete Popup - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                            context, DeletePopupDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Empty State Downloaded",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.emptyStateDownloadedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Delete from Saved - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                            context, DeleteFromSavedDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Saved empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.savedEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "No Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.noNotificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.historyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History Delete - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                            context, HistoryDeleteDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "No History",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.noHistoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Setting",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.settingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Language",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.helpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Logout - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                            context, LogoutDialog()),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ), 
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }

  /// common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName, 
  ) {
    Navigator.pushNamed(context, routeName);
  }  
}