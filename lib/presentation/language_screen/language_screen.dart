import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/languagelist_item_widget.dart';

class LanguageScreen extends StatefulWidget {
  LanguageScreen({Key? key})
      : super(
        key: key,
      );

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildTopBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 20.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children:[
              CustomSearchView(
                controller: searchController,
                hintText: "Search Language",
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 12.h,
                ),
              ),
              SizedBox(height: 24.h),
              _buildLanguageList(context)
            ],
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
        text: "Setting",
      ),
    );
  }

  Widget _buildLanguageList(BuildContext context) { 
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 16.h,
          );
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return LanguagelistItemWidget();
        },
      ),
    );
  }
}
