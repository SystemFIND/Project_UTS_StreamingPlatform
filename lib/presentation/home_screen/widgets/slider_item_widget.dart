import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage,
      height: 296.h,
      margin: EdgeInsets.only(bottom: 18.h),
    );
  }
}
