part of 'home_screen.dart';

class _DailyTasksComponent extends ConsumerWidget {
  const _DailyTasksComponent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GameLevel gameLevelData = ref
        .watch(gameDataManagerProvider.select((value) => value.currentLevel));

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/monsters/monster_1.png",
              width: 150,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 150,
                  child: const Text(
                    'You are almost there!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const Opacity(
                    opacity: 0.7, child: Text('Steps left to defeat ⚔️')),
                Text(
                  (gameLevelData.stepsTotal - gameLevelData.stepsTaken)
                      .toString(),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
        LinearPercentIndicator(
          width: 1.sw,
          lineHeight: 8.0,
          percent: gameLevelData.stepsTaken / gameLevelData.stepsTotal,
          progressColor: Colors.green,
        )
      ],
    );
  }
}
