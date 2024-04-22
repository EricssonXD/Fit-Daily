import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:senior_active_adventure/features/dialogs/popup_dialogs.dart';

class StepStatWidget extends HookConsumerWidget {
  const StepStatWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TabController tabController = useTabController(initialLength: 3);

    return Column(
      children: [
        const Center(
            child: Text(
          "Your Steps Progress",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        )),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          width: 0.8.sw,
          child: _StatsTabBar(tabController: tabController),
        ),
        const _MonthTab(),
        ElevatedButton(
          onPressed: () {
            MyDialog(context: context, type: MyDialogType.silverMedal).show();
          },
          child: const Text("Test"),
        ),
      ],
    );
  }
}

class _MonthTab extends StatelessWidget {
  const _MonthTab();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Average"),
                Text("8000"),
              ],
            ),
          ),
          VerticalDivider(
            width: 20,
            thickness: 20,
            color: Colors.red,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Best"),
                Text("12000"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _StatsTabBar extends StatelessWidget {
  const _StatsTabBar({
    required this.tabController,
  });

  final TabController tabController;

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
          child: TabBar(
            automaticIndicatorColorAdjustment: true,
            controller: tabController,
            splashBorderRadius: const BorderRadius.all(Radius.circular(50)),
            indicator: const BoxDecoration(
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
            tabs: const [
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
