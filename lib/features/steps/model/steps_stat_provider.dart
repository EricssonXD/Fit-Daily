import 'dart:async';

import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:senior_active_adventure/features/steps/model/steps_data.dart';
import 'package:senior_active_adventure/features/steps/model/steps_isar_provider.dart';
import 'package:senior_active_adventure/util/isar/isar_manager.dart';

part 'steps_stat_provider.g.dart';

@Riverpod(keepAlive: true)
class StepsStatsToday extends _$StepsStatsToday {
  StreamSubscription<StepsData?>? sub;

  void init() {
    sub = IsarManager.isar.stepsDatas
        .watchObject(StepsIsarManager.getTodayId, fireImmediately: true)
        .asBroadcastStream()
        .listen((event) {
      state = event;
    });
  }

  void dispose() {
    sub?.cancel();
  }

  @override
  StepsData? build() {
    init();
    ref.onDispose(dispose);
    return IsarManager.isar.stepsDatas.get(StepsIsarManager.getTodayId);
  }
}

@Riverpod(keepAlive: true)
class StepsStatsWeek extends _$StepsStatsWeek {
  final List<StepsData> _thisWeekData = [];

  @override
  List<StepsData> build() {
    final today = StepsIsarManager.getToday;
    final thisWeek = today.subtract(const Duration(days: 6));
    _thisWeekData.addAll(IsarManager.isar.stepsDatas
        .where()
        .dateLessThan(today)
        .and()
        .dateGreaterThanOrEqualTo(thisWeek)
        .findAll());

    final todaySteps = ref.watch(stepsStatsTodayProvider);
    return [..._thisWeekData, if (todaySteps != null) todaySteps];
  }
}

@Riverpod(keepAlive: true)
class StepsStatsMonth extends _$StepsStatsMonth {
  final List<StepsData> _thisMonthData = [];

  @override
  List<StepsData> build() {
    final today = StepsIsarManager.getToday;
    final thisMonth = DateTime(today.year, today.month);
    _thisMonthData.addAll(IsarManager.isar.stepsDatas
        .where()
        .dateLessThan(today)
        .and()
        .dateGreaterThanOrEqualTo(thisMonth)
        .findAll());

    final todaySteps = ref.watch(stepsStatsTodayProvider);
    return [..._thisMonthData, if (todaySteps != null) todaySteps];
  }
}


// @Riverpod(keepAlive: true)
// class StepsStatsMonth extends _$StepsStatsMonth {
  
//   @override
//   List<StepsData> build() {
//      Timer? timer;
//     ref.onDispose(() {
//       timer = Timer(const Duration(seconds: 30), () {
//         // Dispose the provider's state after 30 seconds of inactivity
//         ref. = false;
//       });
//     });

//     // Cancel the timer if the provider becomes listened to again
//     ref.onListen(() {
//       timer?.cancel();
//       timer = null;
//     });

//     final today = StepsIsarManager.getToday;
//     final thisMonth = DateTime(today.year, today.month);
//     return IsarManager.isar.stepsDatas
//         .where()
//         .dateLessThan(today)
//         .and()
//         .dateGreaterThanOrEqualTo(thisMonth)
//         .findAll();
//   }
// }
