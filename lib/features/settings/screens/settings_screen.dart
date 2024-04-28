import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:senior_active_adventure/util/router/router.dart';

@RoutePage()
class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                // ref.read(authProvider).signOut();
                context.navigateTo(const UserLoginRoute());
              },
            )
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text("Debug Page"),
              onTap: () => context.navigateTo(const DebugRoute()),
            ),
          ],
        ));
  }
}
