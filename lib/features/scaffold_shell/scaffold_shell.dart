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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameData = ref.watch(gameDataManagerProvider);
    final AppBar defaultAppBar = AppBar(
      elevation: 1,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(child: Icon(Icons.people)),
      ),
      actions: [
        ...medalWidget(gameData.goldMedals, "gold"),
        ...medalWidget(gameData.silverMedals, "silver"),
        ...medalWidget(gameData.monsterMedals, "monster"),
      ],
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
