import 'package:flutter/material.dart';
import 'package:prototype/presentation/home_screen/home_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable

class PaymentSuccesfulPopupDialog extends StatelessWidget {
  const PaymentSuccesfulPopupDialog({Key? key})
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup427318777,
                height: 100.h,
                width: 92.h,
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 162.h,
                child: Text(
                  "Congrats your package is active",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 202.h,
                  margin: EdgeInsets.only(left: 18.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildAccessVideosRow(
                          context,
                          userImage: ImageConstant.imgCheckmark,
                          autoExtendText: "Active on 20 February 2022",
                        ),
                      ),
                      SizedBox(height: 14.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildAccessVideosRow(
                          context,
                          userImage: ImageConstant.imgCheckmarkGray900,
                          autoExtendText: "Auto extend",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              CustomElevatedButton(
                text: "Watch Now",
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }
              ),
            ],
          ),
        )
      ],
    );
  }

  /// Common Widget
  Widget _buildAccessVideosRow(
    BuildContext context, {
    required String userImage,
    required String autoExtendText,
    }) {
    return Row(
        children: [
            CustomImageView(
                imagePath: userImage,
                height: 24.h,
                width: 24.h,
            ),
            Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                    autoExtendText,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(1),
                    ),
                ),
            )
        ],
    );
  }
}  
