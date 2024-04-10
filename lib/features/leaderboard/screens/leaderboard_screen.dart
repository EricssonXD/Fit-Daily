import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:senior_active_adventure/features/leaderboard/models/leaderboard_provider.dart';

@RoutePage()
class LeaderBoardScreen extends ConsumerWidget {
  const LeaderBoardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final leaderboard = ref.watch(leaderBoardManagerProvider);
    return ListView.builder(
      itemCount: leaderboard.length,
      itemBuilder: (context, index) {
        final entry = leaderboard[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Row(
              children: [
                Text('#${index + 1}  ',
                    style: const TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold)),
                Text(entry.name),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Text('${entry.score} '), const Icon(Icons.star)],
            ),
          ),
        );
      },
    );
  }
}
