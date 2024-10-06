import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/savedlist_item_widget.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildTopBar(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16.h,
              );
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return SavedlistItemWidget();
            },
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildTopBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Saved",
      ),
      actions: [
        AppbarSubtitleOne(
          text: "Delete",
          margin: EdgeInsets.only(
            top: 15.h,
            right: 16.h,
            bottom: 18.h,
          ),
        )
      ],
    );
  }
}
