// Home Screen Widget
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:senior_active_adventure/features/game/model/game_data.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:senior_active_adventure/features/steps/screens/steps_statistics_widget.dart';

part 'daily_goals_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Home Screen UI
    return const Scaffold(
        extendBodyBehindAppBar: true,

        // A column widget that contains the widgets for a fitness app home screen
        body: DefaultTabController(
          length: 2,
          initialIndex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DailyTasksComponent(),
              StepStatWidget(),
              Expanded(child: StepStatsBarchartTabs()),
            ],
          ),
        ));
  }
}
