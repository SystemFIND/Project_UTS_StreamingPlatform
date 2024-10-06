import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../about_page/about_page.dart';
import '../../similiar_page/similiar_page.dart';
import '../episodeepisodei_tab_page.dart';

class EpisodeTabView extends StatefulWidget {
  @override
  _EpisodeTabViewState createState() => _EpisodeTabViewState();
}

class _EpisodeTabViewState extends State<EpisodeTabView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          child: TabBar(
            controller: _tabController,
            labelColor: theme.colorScheme.primary,
            unselectedLabelColor: theme.colorScheme.primaryContainer,
            indicatorColor: theme.colorScheme.primary,
            tabs: [
              Tab(text: "Episode"),
              Tab(text: "Similar"),
              Tab(text: "About"),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              EpisodeepisodeiTabPage(),
              SimiliarPage(),
              AboutPage(),
            ],
          ),
        ),
      ],
    );
  }
}
