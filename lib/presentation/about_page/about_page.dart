import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'widgets/about_item_widget.dart'; // ignore_for_file: must_be_immutable

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key})
      : super(
          key: key,
        );

  @override
  AboutPageState createState() => AboutPageState();
}

class AboutPageState extends State<AboutPage>
    with AutomaticKeepAliveClientMixin<AboutPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 14.h),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 16.h),
                child: Column(
                  children: [
                    _buildDetailsSection(context),
                    SizedBox(height: 18.h),
                    _buildActorsSection(context)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDetailsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildYearCountrySection(
              context,
              yearLabel: "Genre",
              yearValue: "Adventure, Comedy, Family",
              countryLabel: "Language text",
              countryValue: "English",
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildYearCountrySection(
              context,
              yearLabel: "Year",
              yearValue: "2019",
              countryLabel: "Country",
              countryValue: "United States",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActorsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 14.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Actors",
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 130.h,
            width: 358.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return AboutItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildYearCountrySection(
    BuildContext context, {
    required String yearLabel,
    required String yearValue,
    required String countryLabel,
    required String countryValue,
  }) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                yearLabel,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.colorScheme.primaryContainer.withOpacity(1),
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                yearValue,
                style: CustomTextStyles.labelLargeSemiBold.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                countryLabel,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.colorScheme.primaryContainer.withOpacity(1),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                countryValue,
                style: CustomTextStyles.labelLargeSemiBold.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
