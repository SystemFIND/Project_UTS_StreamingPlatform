import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class NotificationlistItemWidget extends StatelessWidget {
  const NotificationlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSearchOnerror,
            height: 30.h,
            width: 30.h,
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "let's get 100% cashback valid only for 10 hours",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 8.h),
                Text(
                  "10 Minutes Ago",
                  style: CustomTextStyles.bodySmallPrimaryContainerLight,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
