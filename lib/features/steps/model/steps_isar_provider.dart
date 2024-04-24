import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:senior_active_adventure/features/steps/model/steps_data.dart';
import 'package:senior_active_adventure/util/isar/isar_manager.dart';

part 'steps_isar_provider.g.dart';

@riverpod
class StepsIsarManager extends _$StepsIsarManager {
  @override
  StepsData build() {
    return IsarManager.isar.stepsDatas.get(getTodayInt) ??
        StepsData(id: getTodayInt, date: getToday, stepsTaken: 0);
  }
}

int get getTodayInt => getToday.millisecondsSinceEpoch;

DateTime get getToday {
  DateTime now = DateTime.now();
  return DateTime(now.year, now.month, now.day);
}
