part of 'home_screen.dart';

class _DailyTasksComponent extends ConsumerWidget {
  const _DailyTasksComponent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //  const chestImage =  SvgAssetLoader("assets/ui/chest.svg");
    //  chestImage.

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
        SizedBox(
          width: 0.9.sw,
          child: Stack(
            children: [
              LinearPercentIndicator(
                width: 0.9.sw,
                animateFromLastPercent: true,
                barRadius: const Radius.circular(10),
                lineHeight: 8.0,
                percent: gameLevelData.stepsTaken / gameLevelData.stepsTotal,
                progressColor: Colors.green,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Transform.translate(
                  offset: const Offset(0, -20 + 4),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Material(
                        clipBehavior: Clip.antiAlias,
                        shape: const CircleBorder(),
                        child: SvgPicture.asset(
                          "assets/ui/chest.svg",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -30),
          child: SizedBox(
            width: 0.9.sw,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("${gameLevelData.stepsTaken} steps taken"),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 45.0),
                  child: Text("Goal ${gameLevelData.stepsTotal}"),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
