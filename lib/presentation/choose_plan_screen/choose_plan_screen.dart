import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/chooseplanlist_item_widget.dart';

class ChoosePlanScreen extends StatelessWidget {
  const ChoosePlanScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 22.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 190.h,
                child: Text(
                  "Choose your favorite package here",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              _buildChoosePlanList(context)
           ],
         ),
        ),
      ),
   );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgCloseOnprimary,
        onTap: () {
            Navigator.pop(context);
          },

        margin: EdgeInsets.only(
          left: 16.h,
          top: 7.h,
          bottom: 11.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChoosePlanList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 24.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ChooseplanlistItemWidget();
        },
      ),
    );
  }
}
