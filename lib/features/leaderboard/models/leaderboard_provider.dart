import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'leaderboard_provider.g.dart';
part 'leaderboard_provider.freezed.dart';

@riverpod
class LeaderBoardManager extends _$LeaderBoardManager {
  @override
  List<LeaderBoardEntry> build() {
    return _dummyLeaderBoardEntries;
  }
}

@freezed
abstract class LeaderBoardEntry with _$LeaderBoardEntry {
  const factory LeaderBoardEntry({
    required String name,
    required int score,
  }) = _LeaderBoardEntry;
}

const List<LeaderBoardEntry> _dummyLeaderBoardEntries = [
  LeaderBoardEntry(name: 'Alice', score: 100),
  LeaderBoardEntry(name: 'Bob', score: 200),
  LeaderBoardEntry(name: 'Charlie', score: 300),
];
