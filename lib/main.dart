import 'package:senior_active_adventure/util/isar/isar_manager.dart';
import 'package:senior_active_adventure/util/router/router_debug.dart';
import 'package:senior_active_adventure/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:senior_active_adventure/util/router/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:senior_active_adventure/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  IsarManager.init();
  runApp(const ProviderScope(child: App()));
}

final _appRouter = AppRouter();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fit Daily',
      theme: MyTheme.lightTheme,
      routerConfig: _appRouter.config(
        navigatorObservers: () => [
          MyObserver(),
        ],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
