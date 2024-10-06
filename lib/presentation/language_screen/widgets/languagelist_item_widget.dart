import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class LanguagelistItemWidget extends StatelessWidget {
  const LanguagelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBg,
            height: 40.h,
            width: 40.h,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "German",
              style: theme.textTheme.labelLarge,
            ),
          )
        ],
      ),
    );
  }
}
