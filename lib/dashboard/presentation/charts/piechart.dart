
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/presentation/utils/colors.dart';

Widget listIndicator() {
  return Container(
    width: 90,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Indicator(
          color: ColorsManager.kPending,
          text: 'Pending',
          isSquare: true,
        ),
        Indicator(
          color: ColorsManager.kProgress,
          text: 'Progress',
          isSquare: true,
        ),
        Indicator(
          color: ColorsManager.kResolved,
          text: 'Resolved',
          isSquare: true,
        ),
        Indicator(
          color: ColorsManager.kGrey,
          text: 'Closed',
          isSquare: true,
        ),
      ],
    ),
  );
}



List<PieChartSectionData> showingSections(int touchedIndex) {
  return List.generate(4, (i) {
    final isTouched = i == touchedIndex;
    final fontSize = isTouched ? 10.0 : 0.0;
    final radius =  30.0;
    switch (i) {
      case 0:
        return  PieChartSectionData(
            color: ColorsManager.kPending,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, color: Colors.white));

      case 1:
      return PieChartSectionData(
            color: ColorsManager.kProgress,
            value: 20,
            radius: radius,
            title: '20%',
            titleStyle: TextStyle(    fontSize: fontSize, color: Colors.white));
      case 2:
        return PieChartSectionData(
            color:ColorsManager.kResolved,
            value: 20,
            radius: radius,
            title: '20%',
            titleStyle: TextStyle(fontSize: fontSize, color: Colors.white));
      case 3:
        return PieChartSectionData(
            color: ColorsManager.kGrey,
            value: 20,
            radius: radius,
            title: '20%',
            titleStyle: TextStyle(fontSize: fontSize, color: Colors.white));


      default:
        throw Error();
    }
  });
}

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 10,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape:  BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xff7E858B)),
        )
      ],
    );
  }
}