import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_data.freezed.dart';
part 'game_data.g.dart';

@riverpod
class GameDataManager extends _$GameDataManager {
  @override
  GameData build() {
    return const GameData(
      goldMedals: 50,
      silverMedals: 50,
      monsterMedals: 50,
      currentLevel: GameLevel(
        monsterID: 1,
        stepsTaken: 1512,
        stepsTotal: 5000,
      ),
    );
  }
}

@freezed
abstract class GameData with _$GameData {
  const factory GameData({
    required int goldMedals,
    required int silverMedals,
    required int monsterMedals,
    required GameLevel currentLevel,
  }) = _GameData;
}

@freezed
abstract class GameLevel with _$GameLevel {
  const factory GameLevel({
    required int monsterID,
    required int stepsTaken,
    required int stepsTotal,
  }) = _GameLevel;
}
