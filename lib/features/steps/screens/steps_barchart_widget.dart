part of "steps_statistics_widget.dart";

class _StepsBarChart extends StatelessWidget {
  _StepsBarChart({
    required this.type,
    required this.data,
  });

  final _TabType type;
  final List<StepsData> data;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: const FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
        // maxY: 20,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (group) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      // color: AppColors.contentColorBlue.darken(20),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );

    String text;
    switch (type) {
      case _TabType.week:
        text = _intToWeekdayString(data[value.toInt()].date.weekday);

        break;
      case _TabType.month:
        //Month
        text = data[value.toInt()].date.day.toString();

        break;
      case _TabType.today:
        // Year
        text = data[value.toInt()].date.month.toString();

        break;
      default:
        text = "";
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  // LinearGradient get _barsGradient => const LinearGradient(
  //       colors: [Colors.orange],
  //       begin: Alignment.bottomCenter,
  //       end: Alignment.topCenter,
  //     );
  final DateTime today = DateTime.now();

  List<BarChartGroupData> get barGroups => data
      .map((e) => BarChartGroupData(
            x: data.indexOf(e),
            barRods: [
              BarChartRodData(
                toY: e.stepsTaken.toDouble(),
                color: e.date.day == today.day ? Colors.amber : Colors.orange,
              )
            ],
            showingTooltipIndicators: [0],
          ))
      .toList();
}

enum _TabType {
  today,
  week,
  month,
}

String _intToWeekdayString(int day) {
  switch (day) {
    case 1:
      return 'Mn';
    case 2:
      return 'Te';
    case 3:
      return 'Wd';
    case 4:
      return 'Tu';
    case 5:
      return 'Fr';
    case 6:
      return 'St';
    case 7:
      return 'Sn';
    default:
      return '';
  }
}
