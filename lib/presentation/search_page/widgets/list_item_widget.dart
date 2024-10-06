import 'package:flutter/material.dart' hide SearchController;
import '../../../core/app_export.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle12082,
        height: 134.h,
        width: 98.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
