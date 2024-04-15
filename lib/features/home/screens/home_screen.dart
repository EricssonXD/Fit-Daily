// Home Screen Widget
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:senior_active_adventure/features/game/model/game_data.dart';
import 'package:percent_indicator/percent_indicator.dart';

part 'daily_goals.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Home Screen UI
    return Scaffold(
        extendBodyBehindAppBar: true,

        // A column widget that contains the widgets for a fitness app home screen
        body: Column(
          children: [
            // A row widget that contains the widgets for the user profile
            SizedBox(height: MediaQuery.of(context).padding.top),
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _DailyTasksComponent(),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
