// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AIChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AIChatScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LeaderBoardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LeaderBoardScreen(),
      );
    },
    ScaffoldShellRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScaffoldShellScreen(),
      );
    },
    UserLoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserLoginScreen(),
      );
    },
  };
}

/// generated route for
/// [AIChatScreen]
class AIChatRoute extends PageRouteInfo<void> {
  const AIChatRoute({List<PageRouteInfo>? children})
      : super(
          AIChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'AIChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LeaderBoardScreen]
class LeaderBoardRoute extends PageRouteInfo<void> {
  const LeaderBoardRoute({List<PageRouteInfo>? children})
      : super(
          LeaderBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'LeaderBoardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScaffoldShellScreen]
class ScaffoldShellRoute extends PageRouteInfo<void> {
  const ScaffoldShellRoute({List<PageRouteInfo>? children})
      : super(
          ScaffoldShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScaffoldShellRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserLoginScreen]
class UserLoginRoute extends PageRouteInfo<void> {
  const UserLoginRoute({List<PageRouteInfo>? children})
      : super(
          UserLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserLoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
