import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:senior_active_adventure/features/steps/model/steps_data.dart';
import 'package:senior_active_adventure/features/steps/model/steps_isar_provider.dart';
import 'package:senior_active_adventure/features/steps/model/steps_stat_provider.dart';
import 'package:senior_active_adventure/util/isar/isar_manager.dart';

part "steps_barchart_widget.dart";

class StepStatWidget extends HookConsumerWidget {
  const StepStatWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final TabController tabController = useTabController(initialLength: 3);

    return Column(
      children: [
        const Center(
            child: Text(
          "Your Steps Progress",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        )),
        const SizedBox(height: 10),
        SizedBox(
          height: 35,
          width: 0.8.sw,
          child: const _StatsTabBar(),
        ),
      ],
    );
  }
}

class StepStatsBarchartTabs extends StatelessWidget {
  const StepStatsBarchartTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        _TodayTab(),
        _WeekTab(),
        _MonthTab(),
      ],
    );
  }
}

class _MonthTab extends ConsumerWidget {
  const _MonthTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepData = ref.watch(stepsStatsMonthProvider);

    return Padding(
      padding: EdgeInsets.only(left: 0.1.sw, right: 0.1.sw, top: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "Average\n",
                    style: DefaultTextStyle.of(context).style.copyWith(
                          fontSize: 14,
                          color: Colors.grey[600],
                          height: 1,
                        ),
                    children: [
                      TextSpan(
                        text: _averageSteps(stepData).toString(),
                        style: const TextStyle(
                          fontSize: 28,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(text: " steps")
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 35,
                  child: VerticalDivider(),
                ),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "Best\n",
                    style: DefaultTextStyle.of(context).style.copyWith(
                          fontSize: 14,
                          color: Colors.grey[600],
                          height: 1,
                        ),
                    children: [
                      TextSpan(
                        text: _maxSteps(stepData).toString(),
                        style: const TextStyle(
                          fontSize: 28,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(text: " steps")
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              height: 1.sh - 150 - kBottomNavigationBarHeight - 370,
              child: _StepsBarChart(
                labelVisible: false,
                type: _TabType.month,
                data: stepData,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _WeekTab extends ConsumerWidget {
  const _WeekTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepData = ref.watch(stepsStatsWeekProvider);
    return Padding(
      padding: EdgeInsets.only(left: 0.1.sw, right: 0.1.sw, top: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "Average\n",
                    style: DefaultTextStyle.of(context).style.copyWith(
                          fontSize: 14,
                          color: Colors.grey[600],
                          height: 1,
                        ),
                    children: [
                      TextSpan(
                        text: _averageSteps(stepData).toString(),
                        style: const TextStyle(
                          fontSize: 28,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(text: " steps")
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 35,
                  child: VerticalDivider(),
                ),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "Best\n",
                    style: DefaultTextStyle.of(context).style.copyWith(
                          fontSize: 14,
                          color: Colors.grey[600],
                          height: 1,
                        ),
                    children: [
                      TextSpan(
                        text: _maxSteps(stepData).toString(),
                        style: const TextStyle(
                          fontSize: 28,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(text: " steps")
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              height: 1.sh - 150 - kBottomNavigationBarHeight - 370,
              child: _StepsBarChart(
                type: _TabType.week,
                data: stepData,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TodayTab extends HookConsumerWidget {
  const _TodayTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final steps = useState(-1);
    useOnStreamChange(
      // IsarManager.isar.stepsDatas
      //     .where()
      //     .sortByDateDesc()
      //     .watch(limit: 1, fireImmediately: true),
      IsarManager.isar.stepsDatas
          .where()
          .idEqualTo(StepsIsarManager.getTodayId)
          .watch(limit: 1, fireImmediately: true),
      onData: (event) {
        final snapshot = event.singleOrNull;
        if (snapshot != null) steps.value = snapshot.stepsTaken;
      },
    );

    return Text((steps.value).toString());
  }
}

class _StatsTabBar extends StatelessWidget {
  const _StatsTabBar(
      // required this.tabController,
      );

  // final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: Colors.grey[200],
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Theme(
          data: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
              surfaceVariant: Colors.transparent,
            ),
          ),
          child: const TabBar(
            automaticIndicatorColorAdjustment: true,
            // controller: tabController,
            splashBorderRadius: BorderRadius.all(Radius.circular(50)),
            indicator: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            // indicatorColor: Colors.white,
            // labelColor: Colors.white,
            tabs: [
              Tab(
                text: "Today",
              ),
              Tab(
                text: "Week",
              ),
              Tab(
                text: "Month",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int _maxSteps(List<StepsData> data) {
  return data.fold<int>(0, (previousValue, element) {
    return element.stepsTaken > previousValue
        ? element.stepsTaken
        : previousValue;
  });
}

int _averageSteps(List<StepsData> data) {
  return data.fold<int>(0, (previousValue, element) {
        return previousValue + element.stepsTaken;
      }) ~/
      data.length;
}
