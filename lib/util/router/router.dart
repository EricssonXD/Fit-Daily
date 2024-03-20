import 'package:auto_route/auto_route.dart';

import 'package:fit_daily/features/ai_chat/screens/ai_chat_screen.dart';
import 'package:fit_daily/features/home/screens/home_screen.dart';
import 'package:fit_daily/features/scaffold_shell/scaffold_shell.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: ScaffoldShellRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: AIChatRoute.page),
          ],
        ),
      ];
}
