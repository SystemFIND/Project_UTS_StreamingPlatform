import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';

class ListthorItemWidget extends StatelessWidget {
  const ListthorItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 214.h,
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle686x214,
            height: 86.h,
            width: double.maxFinite,
            radius: BorderRadius.vertical(
              top: Radius.circular(10.h),
            ),
          ),
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 136.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Text(
                "Thor: Ragnarok",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "1:50:35",
                  style: theme.textTheme.labelSmall,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "2021",
                    style: theme.textTheme.labelSmall,
                  ),
                ),
                Spacer(),
                CustomIconButton(
                  height: 20.h,
                  width: 20.h,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonStyleHelper.fillOnError,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLightBulbOnprimary,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8.h)
        ],
      ),
    );
  }
}
