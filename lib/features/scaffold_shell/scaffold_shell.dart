import 'package:auto_route/auto_route.dart';
import 'package:senior_active_adventure/features/game/model/game_data.dart';
import 'package:senior_active_adventure/util/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ScaffoldShellScreen extends ConsumerWidget {
  const ScaffoldShellScreen({super.key});

  List<Widget> medalWidget(int num, String img) {
    return [
      SvgPicture.asset(
        'assets/ui/medal_$img.svg',
        // height: 20.0,
        // width: 20.0,
        allowDrawingOutsideViewBox: true,
      ),
      Text("$num  "),
    ];
  }

  String intToMonthString(int month) {
    switch (month) {
      case DateTime.january:
        return "January";
      case DateTime.february:
        return "February";
      case DateTime.march:
        return "March";
      case DateTime.april:
        return "April";
      case DateTime.may:
        return "May";
      case DateTime.june:
        return "June";
      case DateTime.july:
        return "July";
      case DateTime.august:
        return "August";
      case DateTime.september:
        return "September";
      case DateTime.october:
        return "October";
      case DateTime.november:
        return "November";
      case DateTime.december:
        return "December";
      default:
        return "Unknown";
    }
  }

  String intToWeekdayString(int weekday) {
    switch (weekday) {
      case DateTime.sunday:
        return "Sunday";
      case DateTime.monday:
        return "Monday";
      case DateTime.tuesday:
        return "Tuesday";
      case DateTime.wednesday:
        return "Wednesday";
      case DateTime.thursday:
        return "Thursday";
      case DateTime.friday:
        return "Friday";
      case DateTime.saturday:
        return "Saturday";
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameData = ref.watch(gameDataManagerProvider);
    final today = DateTime.now();
    //TODO use actual user icon
    const userIcon = AssetImage('assets/monsters/monster_2.png');

    final AppBar defaultAppBar = AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0, left: 5),
        child: CircleAvatar(
          backgroundImage: userIcon,
          child: SizedBox.expand(
            child: Material(
              shape: const CircleBorder(),
              clipBehavior: Clip.hardEdge,
              color: Colors.transparent,
              child: InkWell(
                onTap: () => context.navigateTo(const SettingRoute()),
              ),
            ),
          ),
        ),
      ),
      actions: [
        ...medalWidget(gameData.goldMedals, "gold"),
        ...medalWidget(gameData.silverMedals, "silver"),
        ...medalWidget(gameData.monsterMedals, "monster"),
      ],
      bottom: PreferredSize(
        preferredSize:
            const Size.fromHeight(kBottomNavigationBarHeight * 4 / 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                  "${intToMonthString(today.month)} ${today.day}, ${intToWeekdayString(today.weekday)}"),
            ),
            const Divider()
          ],
        ),
      ),
    );

    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        return defaultAppBar;
      },
      routes: const [
        AIChatRoute(),
        HomeRoute(),
        LeaderBoardRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(label: 'Chat', icon: Icon(Icons.chat)),
            BottomNavigationBarItem(
                label: 'Dashboard', icon: Icon(Icons.dashboard)),
            BottomNavigationBarItem(
                label: 'LeaderBoard', icon: Icon(Icons.leaderboard)),
          ],
        );
      },
    );
  }
}
