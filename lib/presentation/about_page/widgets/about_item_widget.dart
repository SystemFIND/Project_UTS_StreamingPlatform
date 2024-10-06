import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class AboutItemWidget extends StatelessWidget {
  const AboutItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.h,
      width: 104.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle12050,
            height: 126.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 54.h,
              margin: EdgeInsets.only(
                left: 12.h,
                bottom: 4.h,
              ),
              child: Text(
                "Mena Massoud",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
