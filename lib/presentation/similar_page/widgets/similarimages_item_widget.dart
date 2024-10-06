import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class SimilarimagesItemWidget extends StatelessWidget {
  const SimilarimagesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle12078,
      height: 140.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }
}
