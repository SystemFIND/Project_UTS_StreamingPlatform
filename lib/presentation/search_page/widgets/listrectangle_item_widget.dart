import 'package:flutter/material.dart' hide SearchController;
import '../../../core/app_export.dart';

class ListrectangleItemWidget extends StatelessWidget {
  const ListrectangleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle12078134x98,
        height: 134.h,
        width: 98.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
