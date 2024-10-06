import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'widgets/episode_item_widget.dart';

class EpisodeepisodeiTabPage extends StatefulWidget {
  const EpisodeepisodeiTabPage({Key? key}) : super(key: key);

  @override
  EpisodeepisodeiTabPageState createState() => EpisodeepisodeiTabPageState();
}

class EpisodeepisodeiTabPageState extends State<EpisodeepisodeiTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.h,
      ),
      child: Column(
        children: [
          ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16.h,
              );
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return EpisodeItemWidget();
            },
          ),
        ],
      ),
    );
  }
}
