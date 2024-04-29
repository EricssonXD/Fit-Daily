import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:senior_active_adventure/features/steps/model/steps_data.dart';
import 'package:senior_active_adventure/util/isar/isar_manager.dart';

part 'steps_isar_provider.g.dart';

@riverpod
class StepsIsarManager extends _$StepsIsarManager {
  static StepsData buildStepData(DateTime date, int steps) {
    final targetDay = DateTime(date.year, date.month, date.day);
    StepsData stepsData = StepsData(
      id: targetDay.millisecondsSinceEpoch,
      date: targetDay,
      stepsTaken: steps,
    );
    return stepsData;
  }

  void setTodaySteps(int steps) {
    StepsData stepsData =
        StepsData(id: getTodayId, date: getToday, stepsTaken: steps);
    IsarManager.isar.write((isar) => isar.stepsDatas.put(stepsData));
  }

  void addStepsData(DateTime date, int steps) {
    final targetDay = DateTime(date.year, date.month, date.day);
    StepsData stepsData = StepsData(
        id: targetDay.millisecondsSinceEpoch,
        date: targetDay,
        stepsTaken: steps);
    IsarManager.isar.write((isar) => isar.stepsDatas.put(stepsData));
  }

  static int get getTodayId => getToday.millisecondsSinceEpoch;

  static DateTime get getToday {
    DateTime now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  @override
  StepsData build() {
    return IsarManager.isar.stepsDatas.get(getTodayId) ??
        StepsData(id: getTodayId, date: getToday, stepsTaken: 0);
  }
}
