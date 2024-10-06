import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'widgets/episode_main_content.dart';
import 'widgets/episode_action_buttons.dart';
import 'widgets/episode_description.dart';
import 'widgets/episode_tab_view.dart';

class EpisodeScreen extends StatefulWidget {
  const EpisodeScreen({Key? key}) : super(key: key);

  @override
  EpisodeScreenState createState() => EpisodeScreenState();
}

class EpisodeScreenState extends State<EpisodeScreen> {
  late Future<void> _initFuture;

  @override
  void initState() {
    super.initState();
    _initFuture = _initializeData();
  }

  Future<void> _initializeData() async {
    // Simulate data loading
    await Future.delayed(Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: _initFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: EpisodeMainContent(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 16.h),
                  ),
                  SliverToBoxAdapter(
                    child: EpisodeActionButtons(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 24.h),
                  ),
                  SliverToBoxAdapter(
                    child: EpisodeDescription(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 22.h),
                  ),
                  SliverFillRemaining(
                    child: EpisodeTabView(),
                  ),
                ],
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
