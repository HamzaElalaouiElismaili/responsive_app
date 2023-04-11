import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'barchart.dart';
import 'piechart.dart';

class DashboardChart extends HookWidget {

  final Function()? onPressed;
  final bool isPieChart;
  final String title;
  final String subtitle;


  DashboardChart({Key? key,required this.onPressed, required this.isPieChart,required this.subtitle, required this.title}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final touchedIndex = useState<int>(-1);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.white,
      child: Column(
        children: <Widget>
        [

          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  Text(subtitle,style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.normal,fontStyle: FontStyle.italic),),
                ],
              ),
              Spacer(),
              IconButton(
                onPressed:()
                {
                  onPressed!();
                },
                icon: Icon(Icons.more_vert,color: Colors.grey,),
              ),
            ],
          ),

         isPieChart?
          Expanded(
            child: Row(
              children:
              [
                Expanded(
                  child: PieChart(
                    PieChartData(
                        pieTouchData: PieTouchData(touchCallback:
                            (FlTouchEvent event, pieTouchResponse)
                        {
                            if (!event.isInterestedForInteractions || pieTouchResponse == null || pieTouchResponse.touchedSection == null)
                            {
                              touchedIndex.value = -1;
                              return;
                            }
                            touchedIndex.value = pieTouchResponse.touchedSection!.touchedSectionIndex;

                        }),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 2,
                        centerSpaceRadius: 45,
                        sections: showingSections(touchedIndex.value)),
                  ),
                ),

                const SizedBox(width: 10),
                listIndicator(),
                const SizedBox(width: 15,),
              ],
            ),
          ): Expanded(child: BarChartElement()),

          const SizedBox(height: 20,),


        ],
      ),
    );
  }
}



