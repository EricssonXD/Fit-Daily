import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:senior_active_adventure/firebase/firestore_provider.dart';

part 'leaderboard_provider.g.dart';
part 'leaderboard_provider.freezed.dart';

@riverpod
class LeaderBoardManager extends _$LeaderBoardManager {
  void getLeaderboard() {
    List<LeaderBoardEntry> entries = [];
    ref
        .watch(fireStoreManagerProvider)
        .collection('users')
        .orderBy("score", descending: true)
        .limit(10)
        .get()
        .then(
      (querySnapshot) {
        print("Successfully completed");
        for (var docSnapshot in querySnapshot.docs) {
          print('${docSnapshot.id} => ${docSnapshot.data()}');
          entries.add(LeaderBoardEntry(
              name: docSnapshot.data()["name"],
              score: docSnapshot.data()["score"]));
        }
      },
      onError: (e) => print("Error completing: $e"),
    );
  }

  @override
  List<LeaderBoardEntry> build() {
    getLeaderboard();
    return [];
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
