import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';

class EpisodeItemWidget extends StatelessWidget {
  const EpisodeItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 130.h,
            width: 130.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12046,
                  height: 130.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                ),
                CustomIconButton(
                  height: 40.h,
                  width: 40.h,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgOverflowMenu,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trailer",
                        style: theme.textTheme.titleSmall,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgDownload,
                        height: 16.h,
                        width: 16.h,
                        alignment: Alignment.bottomCenter,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
                Text(
                  "Aladdin, a street boy who falls in love with a princess. with differences in caste and wealth, Aladdin tries to find...",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallPrimaryContainer.copyWith(
                    height: 1.50,
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
