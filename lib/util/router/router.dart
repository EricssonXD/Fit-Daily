import 'package:auto_route/auto_route.dart';

import 'package:fit_daily/ai_chat/screens/ai_chat_screen.dart';
import 'package:fit_daily/home/screens/home_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: AIChatRoute.page),
      ];
}
