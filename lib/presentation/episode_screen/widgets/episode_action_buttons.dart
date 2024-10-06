import 'package:flutter/material.dart';
import 'package:prototype/presentation/choose_plan_screen/choose_plan_screen.dart';
import 'package:prototype/presentation/download_movie_pop_up_dialog/download_movie_pop_up_dialog.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../theme/custom_button_style.dart';

class EpisodeActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        children: [
          Expanded(
            child: CustomElevatedButton(
                height: 36.h,
                text: "Play",
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPlay,
                    height: 16.h,
                    width: 16.h,
                    fit: BoxFit.contain,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                buttonTextStyle: theme.textTheme.titleSmall!,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChoosePlanScreen(),
                    ),
                  );
                }),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: CustomElevatedButton(
              height: 36.h,
              text: "Download",
              leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgDownload,
                  height: 16.h,
                  width: 16.h,
                  fit: BoxFit.contain,
                ),
              ),
              buttonStyle: CustomButtonStyles.fillOnPrimaryContainerTL18,
              buttonTextStyle: theme.textTheme.titleSmall!,
              onPressed: () => onTapDownload(context),
            ),
          ),
        ],
      ),
    );
  }

  void onTapDownload(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: DownloadMoviePopUpDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
            ));
  }
}
