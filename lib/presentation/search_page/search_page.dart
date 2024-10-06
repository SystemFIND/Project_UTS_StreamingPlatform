import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/chipviewtabs_item_widget.dart';
import 'widgets/list_item_widget.dart';
import 'widgets/listrectangle_item_widget.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            children: [
              _buildRecentSearchesSection(context),
              SizedBox(height: 26.h),
              _buildPopularSection(context),
              SizedBox(height: 26.h),
              _buildRecommendationsSection(context),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "Search by title, genre, actor",
        controller: searchController,
      ),
    );
  }

  Widget _buildRecentSearchesSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Searches",
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: double.maxFinite,
            child: Wrap(
              runSpacing: 12.h,
              spacing: 12.h,
              children:
                  List<Widget>.generate(4, (index) => ChipviewtabsItemWidget()),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPopularSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular",
                      style: CustomTextStyles.titleMediumSemiBold,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 138.h,
            width: 358.h,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 12.h,
                );
              },
              itemCount: 4,
              itemBuilder: (context, Index) {
                return ListrectangleItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRecommendationsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recommendations for you",
                      style: CustomTextStyles.titleMediumSemiBold,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            height: 138.h,
            width: 358.h,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 12.h,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }
}
