import 'package:auto_route/auto_route.dart';
import 'package:fit_daily/counter/counter.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CounterRoute.page, initial: true),
      ];
}
