import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable

class HistoryDeleteDialog extends StatelessWidget {
  const HistoryDeleteDialog({Key? key}) 
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
            vertical: 34.h,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.onError,
            borderRadius: BorderRadiusStyle.roundedBorder30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUpYellow700,
                height: 98.h,
                width: 98.h,
              ),
              SizedBox(height: 22.h),
              Text(
                "Are you sure ?",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 16.h),
              Text(
                "By doing this, the history will be deleted from your history list",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallPrimaryContainer.copyWith(
                  height: 1.50,
                ),
              ),
              SizedBox(height: 36.h),
              CustomElevatedButton(
                text: "Cancel",
              ),
              SizedBox(height: 28.h),
              Text(
                "Delete",
                style: CustomTextStyles.titleMedium16,
              ),
              SizedBox(height: 12.h)
            ],
          ),
        )
      ],
    );
  }
}
