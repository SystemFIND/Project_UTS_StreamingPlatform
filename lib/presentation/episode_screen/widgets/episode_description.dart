import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../core/app_export.dart';

class EpisodeDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: ReadMoreText(
        "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find a way to become a prince...",
        trimLines: 2,
        colorClickableText: theme.colorScheme.onPrimary.withOpacity(1),
        trimMode: TrimMode.Line,
        trimCollapsedText: "Read more",
        moreStyle: CustomTextStyles.bodySmallPrimaryContainer.copyWith(
          height: 1.50,
        ),
        lessStyle: CustomTextStyles.bodySmallPrimaryContainer.copyWith(
          height: 1.50,
        ),
      ),
    );
  }
}
