import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:flutter/foundation.dart';

part 'exercises.freezed.dart';
part 'exercises.g.dart';

@freezed
// @Collection(ignore: {'copyWith'})
@Collection()
class Exercise with _$Exercise {
  const factory Exercise({
    required int id,
    required String name,
    required String description,
    required String image,
    required String video,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}
