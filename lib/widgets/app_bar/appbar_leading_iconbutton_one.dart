import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_icon_button.dart';

class AppbarLeadingIconbuttonOne extends StatelessWidget {
  AppbarLeadingIconbuttonOne(
    {Key? key, this.imagePath, this.onTap, this.margin})
      : super(
          key: key,
      );

  final String? imagePath;

  final Function? onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: margin ?? EdgeInsets.zero,
        child: GestureDetector(
          onTap: () {
            onTap?.call();
          },
          child: CustomIconButton(
            height: 34.h,
            width: 34.h,
            padding: EdgeInsets.all(4.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgCloseOnprimary,
            ),
          ),
        ),
      );
  }
}