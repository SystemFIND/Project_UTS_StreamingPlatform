import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable

class SubscribePopupDialog extends StatelessWidget {
  const SubscribePopupDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 24.h,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.onError,
            borderRadius: BorderRadiusStyle.roundedBorder30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 58.h,
                width: 78.h,
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  "Be a premium user and get more features",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 18.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildAccessVideosRow(
                        context,
                        accessText: "Ad-free",
                      ),
                    ),
                    SizedBox(height: 14.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildAccessVideosRow(
                        context,
                        accessText: "Get access to all videos",
                      ),
                    ),
                    SizedBox(height: 14.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildAccessVideosRow(
                        context,
                        accessText: "Cancel anytime and anywhere",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 34.h),
              CustomElevatedButton(
                text: "Subscribe",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildAccessVideosRow(
    BuildContext context, {
    required String accessText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          height: 24.h,
          width: 24.h,
          alignment: Alignment.center,
        ),
        Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Text(
            accessText,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        )
      ],
    );
  }

  /// Navigates to the choosePlanScreen when the action is triggered.
  onTapSubscribe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.choosePlanScreen);
  }
}
