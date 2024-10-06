import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class NoNotificationScreen extends StatelessWidget {
  const NoNotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildTopBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 176.h,
          ),
          child: Column(
            children: [
              _buildNoNotificationSection(context),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildTopBar(BuildContext context) {
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
        text: "Notifications",
      ),
    );
  }

  Widget _buildNoNotificationSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 42.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup184x184,
            height: 184.h,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 36.h),
          ),
          SizedBox(height: 28.h),
          Text(
            "No Notification",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 8.h),
          Text(
            "Notification that we send will appear here",
            style: CustomTextStyles.bodySmallPrimaryContainer,
          )
        ],
      ),
    );
  }
}
