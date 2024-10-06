import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';

class SavedlistItemWidget extends StatelessWidget {
  const SavedlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle12103,
            height: 112.h,
            width: 112.h,
            radius: BorderRadius.circular(
              14.h,
            ),
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 146.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Ice Age: Adventure of buck Wild",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelLarge!.copyWith(
                                  height: 1.50,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "Action, Adventure",
                                style:
                                    CustomTextStyles.bodySmallPrimaryContainer,
                              )
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgNotification,
                        height: 24.h,
                        width: 24.h,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 22.h),
                _buildWatchNowButton(context)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildWatchNowButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 120.h,
      text: "Watch now",
      buttonStyle: CustomButtonStyles.fillPrimaryTL14,
      buttonTextStyle: theme.textTheme.bodySmall!,
    );
  }
}
