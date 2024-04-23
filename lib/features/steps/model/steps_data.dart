import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'steps_data.freezed.dart';

part 'steps_data.g.dart';

@collection
@freezed
class StepsData with _$StepsData {
  const factory StepsData({
    required int id,
    required DateTime date,
    required int stepsTaken,
    @Default(false) bool isSynced,
  }) = _StepsData;
}
