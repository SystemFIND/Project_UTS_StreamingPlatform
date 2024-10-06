import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class ListironmanItemWidget extends StatelessWidget {
  const ListironmanItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgAladdin4,
        height: 178.h,
        width: 124.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
