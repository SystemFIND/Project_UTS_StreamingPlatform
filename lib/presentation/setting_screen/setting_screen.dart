import 'package:flutter/material.dart';
import 'package:streaming_platform/presentation/language_screen/language_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_switch.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSelectedSwicth = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 20.h,
          ),
          child: Column(
            children: [
              _buildLanguageSelection(context),
              SizedBox(height: 16.h),
              _buildNotificationSettings(context),
              SizedBox(height: 16.h),
              _buildDownloadQuality(context),
              SizedBox(height: 16.h),
              _buildWifiDownloadSettings(context),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 7.h,
          bottom: 11.h,
        ),
        onTap: (){
        Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Setting",
      ),
    );
  }

  Widget _buildLanguageSelection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
           Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LanguageScreen(),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
            color: appTheme.gray900,
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGlobe,
                height: 40.h,
                width: 40.h,
              ),
              SizedBox(width: 14.h),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Language",
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "English",
                        style: CustomTextStyles.labelMediumOnPrimary,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationSettings(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame427319100,
            height: 40.h,
            width: 40.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "Notification",
              style: theme.textTheme.labelLarge,
            ),
          ),
          Spacer(),
          CustomSwitch(
            value: isSelectedSwicth,
            onChange: (value) {
              isSelectedSwicth = value;
            },
          )
        ],
      ),
    );
  }

  Widget _buildDownloadQuality(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseOnerror,
            height: 40.h,
            width: 40.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                bottom: 8.h,
              ),
              child: Text(
                "Download in high Quality",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Spacer(),
          CustomSwitch(
            value: isSelectedSwitch1,
            onChange: (value) {
              isSelectedSwitch1 = value;
            },
          )
        ],
      ),
    );
  }

  Widget _buildWifiDownloadSettings(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 40.h,
            width: 40.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                bottom: 8.h,
              ),
              child: Text(
                "Download using only Wi-Fi",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Spacer(),
          CustomSwitch(
            value: isSelectedSwitch2,
            onChange: (value) {
              isSelectedSwitch2 = value;
            },
          )
        ],
      ),
    );
  }

  onTapLanguageSelection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.languageScreen);
  }
}
