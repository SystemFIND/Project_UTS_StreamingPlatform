import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/historylist_item_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildTopBar(context),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.fromLTRB(14.h, 20.h, 14.h, 4.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildHistoryList(context)],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildTopBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 7.h,
          bottom: 11.h,
        ),
        onTap: (){
        Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "History",
      ),
    );
  }

  Widget _buildHistoryList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 18.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return HistorylistItemWidget();
        },
      ),
    );
  }
}