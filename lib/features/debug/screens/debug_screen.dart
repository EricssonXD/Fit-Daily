import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:senior_active_adventure/features/game/model/slay_monster_provider.dart';
import 'package:senior_active_adventure/firebase/firestore_provider.dart';

@RoutePage()
class DebugScreen extends ConsumerWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text("Profile"),
            onTap: () {
              return;
              // ignore: dead_code
              final repository = ref.read(fireStoreManagerProvider);
              repository
                  .collection("users")
                  .doc(FirebaseAuth.instance.currentUser!.uid)
                  .set({
                "steps": 1000,
              });
              print("YOOOO");
            },
          ),
          ListTile(
            title: const Text("Swing"),
            subtitle: Text(ref.watch(slayMonsterManagerProvider).toString()),
          )
        ],
      ),
    );
  }
}
