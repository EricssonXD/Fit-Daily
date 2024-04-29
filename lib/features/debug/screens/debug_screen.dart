import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:senior_active_adventure/features/game/model/slay_monster_provider.dart';
import 'package:senior_active_adventure/features/steps/model/steps_data.dart';
import 'package:senior_active_adventure/features/steps/model/steps_isar_provider.dart';
import 'package:senior_active_adventure/firebase/firestore_provider.dart';
import 'package:senior_active_adventure/util/isar/isar_manager.dart';

@RoutePage()
class DebugScreen extends ConsumerWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text("Add Test data to isar"),
            onTap: () {
              _createMockIsarData(ref);
            },
          ),
          ListTile(
            title: const Text("Add Firebase Data"),
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

void _createMockIsarData(WidgetRef ref) {
  final random = Random();
  DateTime day = DateTime.now();
  List<StepsData> stepsDataList = [];

  for (int i = 0; i < 1000; i++) {
    final targetDay = DateTime(day.year, day.month, day.day);
    final steps = random.nextInt(5000);
    stepsDataList.add(StepsIsarManager.buildStepData(targetDay, steps));
    day = day.subtract(const Duration(days: 1));
  }

  IsarManager.isar.write((isar) {
    isar.stepsDatas.putAll(stepsDataList);
  });
}
