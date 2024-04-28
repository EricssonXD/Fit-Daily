import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:pedometer/pedometer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:senior_active_adventure/features/steps/model/steps_isar_provider.dart';

part 'step_counter.g.dart';

@riverpod
class StepCounter extends _$StepCounter {
  int _todaySteps = 0;
  static const storage = FlutterSecureStorage();

  static const String savedStepsCountKey = "savedStepsCountKey";
  static const String lastDaySavedKey = "lastDaySavedKey";

  late StreamSubscription<StepCount> _subscription;

  void startListening() {
    _subscription = Pedometer.stepCountStream.listen(
      getTodaySteps,
      onError: _onError,
      onDone: _onDone,
      cancelOnError: true,
    );
  }

  void _onDone() => debugPrint("Finished pedometer tracking");
  void _onError(error) => debugPrint("Flutter Pedometer Error: $error");

  Future<int> getTodaySteps(StepCount value) async {
    int savedStepsCount =
        int.parse(await storage.read(key: savedStepsCountKey) ?? "0");

    int todayDayNo = value.timeStamp.day;

    if (value.steps < savedStepsCount) {
      savedStepsCount = 0;
      storage.write(key: savedStepsCountKey, value: savedStepsCount.toString());
    }

    int lastDaySaved =
        int.parse(await storage.read(key: lastDaySavedKey) ?? "0");

    // If the day has changed, save the steps and update the last day saved
    if (lastDaySaved < todayDayNo || (todayDayNo == 1 && lastDaySaved > 10)) {
      lastDaySaved = todayDayNo;
      savedStepsCount = value.steps;

      storage
        ..write(key: lastDaySavedKey, value: lastDaySaved.toString())
        ..write(key: savedStepsCountKey, value: savedStepsCount.toString());
    }

    _todaySteps = value.steps - savedStepsCount;

    // Change State
    state = _todaySteps;
    ref.notifyListeners();
    ref.read(stepsIsarManagerProvider.notifier).setTodaySteps(_todaySteps);

    return _todaySteps;
  }

  void stopListening() {
    _subscription.cancel();
  }

  @override
  int build() {
    startListening();
    return _todaySteps;
  }
}
