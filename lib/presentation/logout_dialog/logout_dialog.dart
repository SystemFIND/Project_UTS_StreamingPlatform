import 'package:flutter/material.dart';
import 'package:prototype/presentation/login_screen/login_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({Key? key})
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
          padding: EdgeInsets.all(32.h),
          decoration: BoxDecoration(
            color: theme.colorScheme.onError,
            borderRadius: BorderRadiusStyle.roundedBorder30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserYellow700,
                height: 98.h,
                width: 98.h,
              ),
              SizedBox(height: 22.h),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  "Are you sure you want to leave?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 36.h),
              CustomElevatedButton(
                text: "No",                
              ),
              SizedBox(height: 28.h),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  "Yes",
                  style: CustomTextStyles.titleMedium16,
                ),
              ),
              SizedBox(height: 12.h)
            ],
          ),
        )
      ],
    );
  }

  onTapTxtYesText(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }
}
