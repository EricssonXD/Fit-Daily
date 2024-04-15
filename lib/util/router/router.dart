import 'package:auto_route/auto_route.dart';

import 'package:senior_active_adventure/features/ai_chat/screens/ai_chat_screen.dart';
import 'package:senior_active_adventure/features/home/screens/home_screen.dart';
import 'package:senior_active_adventure/features/leaderboard/screens/leaderboard_screen.dart';
import 'package:senior_active_adventure/features/scaffold_shell/scaffold_shell.dart';
import 'package:senior_active_adventure/features/user_managment/screens/user_login_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: UserLoginRoute.page),

        /// routes go here
        AutoRoute(
          page: ScaffoldShellRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: AIChatRoute.page),
            AutoRoute(page: LeaderBoardRoute.page),
          ],
        ),
      ];
}
