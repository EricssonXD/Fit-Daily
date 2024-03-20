import 'package:auto_route/auto_route.dart';
import 'package:fit_daily/util/router/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScaffoldShellScreen extends StatelessWidget {
  const ScaffoldShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        AIChatRoute(),
        HomeRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(label: 'Chat', icon: Icon(Icons.chat)),
            BottomNavigationBarItem(
                label: 'Dashboard', icon: Icon(Icons.dashboard)),
          ],
        );
      },
    );
  }
}
