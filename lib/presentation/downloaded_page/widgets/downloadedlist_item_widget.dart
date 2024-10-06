import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class DownloadedlistItemWidget extends StatelessWidget {
  const DownloadedlistItemWidget({Key? key})
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
          SizedBox(width: 10.h),
          Expanded(
            child: Column(
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
                          width: 144.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Ice Age: Adventures of buck Wild",
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
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgNotification,
                        height: 24.h,
                        width: 24.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text(
                        "2:05:32",
                        style: theme.textTheme.labelMedium,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector106,
                        height: 10.h,
                        width: 1.h,
                        margin: EdgeInsets.only(left: 8.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "1.2GB",
                          style: theme.textTheme.labelMedium,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
