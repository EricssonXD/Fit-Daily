part of 'home_screen.dart';

class _DailyTasksComponent extends ConsumerWidget {
  const _DailyTasksComponent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox(
      height: 100,
      width: 200,
      child: Card(
        child: Text('Daily Goals'),
      ),
    );
  }
}
