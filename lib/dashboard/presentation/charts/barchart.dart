import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/presentation/utils/colors.dart';

class BarChartElement extends StatelessWidget {

  BarChartElement();
  final Color color = ColorsManager.kBar;


  final double width = 7;
  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;


  void initState() {
    final barGroup1 = makeGroupData(0, 5);
    final barGroup2 = makeGroupData(1, 16);
    final barGroup3 = makeGroupData(2, 18);
    final barGroup4 = makeGroupData(3, 20);
    final barGroup5 = makeGroupData(4, 17);
    final barGroup6 = makeGroupData(5, 19);
    final barGroup7 = makeGroupData(6, 10);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;
    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {

    initState();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: BarChart(
            BarChartData(
              maxY: 20,
              titlesData: FlTitlesData(
                show: true,
                leftTitles: AxisTitles(),
                topTitles: AxisTitles(),
                rightTitles: AxisTitles(),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: bottomTitles,
                    reservedSize: 42,
                  ),
                ),

              ),
              borderData: FlBorderData(show: false,),
              gridData: FlGridData(show: false,),
              barGroups: showingBarGroups,
            ),
          ),
        ),

      ],
    );
  }



  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '18';
        break;
      case 1:
        text = '19';
        break;
      case 2:
        text = '20';
        break;
      case 3:
        text = '21';
        break;
      case 4:
        text = '22';
        break;
      case 5:
        text = '23';
        break;
      case 6:
        text = '24';
        break;
      case 7:
        text = '25';
        break;
      case 8:
        text = '26';
        break;
      case 9:
        text = '27';
        break;
      case 10:
        text = '28';
        break;

      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }


  BarChartGroupData makeGroupData(int x, double y) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(

          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          toY: y,
          rodStackItems: [
            BarChartRodStackItem(0, y, color),
          ],
          width: width,
        ),

      ],
    );
  }

}