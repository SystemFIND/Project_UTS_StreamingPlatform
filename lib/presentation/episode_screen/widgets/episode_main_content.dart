import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../../widgets/app_bar/appbar_trailing_iconbutton.dart';

class EpisodeMainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 368.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 368.h,
            width: double.maxFinite,
            alignment: Alignment.centerLeft,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomAppBar(
                height: 50.h,
                leadingWidth: 50.h,
                leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 16.h, top: 7.h, bottom: 9.h),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                actions: [
                  AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgFrame427319010,
                    margin: EdgeInsets.only(top: 7.h, bottom: 9.h),
                  ),
                  AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgFrame427319010Onprimary,
                    margin: EdgeInsets.fromLTRB(11.h, 7.h, 16.h, 9.h),
                  ),
                ],
              ),
              Spacer(),
              Text(
                "Disney's Aladdin",
                style: CustomTextStyles.headlineSmallSemiBold,
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "2019",
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                  SizedBox(width: 8.h),
                  _buildDot(),
                  SizedBox(width: 8.h),
                  Text(
                    "Adventure, Comedy",
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                  SizedBox(width: 8.h),
                  _buildDot(),
                  SizedBox(width: 8.h),
                  Text(
                    "2h 8m",
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDot() {
    return Container(
      height: 3.h,
      width: 3.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(1.h),
      ),
    );
  }
}
