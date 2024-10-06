import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import 'widgets/similarimages_item_widget.dart'; // ignore_for_file: must_be_immutable

class SimiliarPage extends StatefulWidget {
  const SimiliarPage({Key? key})
      : super(
          key: key,
        );

  @override
  SimiliarPageState createState() => SimiliarPageState();
}

class SimiliarPageState extends State<SimiliarPage>
    with AutomaticKeepAliveClientMixin<SimiliarPage> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.h,
          ),
          child: Column(
            children: [_buildSimiliarImages(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSimiliarImages(BuildContext context) {
    return ResponsiveGridListBuilder(
      minItemWidth: 1.h,
      minItemsPerRow: 3,
      maxItemsPerRow: 5,
      horizontalGridSpacing: 16.h,
      verticalGridSpacing: 16.h,
      builder: (context, items) => ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: items,
      ),
      gridItems: List.generate(
        12,
        (index) {
          return SimilarimagesItemWidget();
        },
      ),
    );
  }
}
