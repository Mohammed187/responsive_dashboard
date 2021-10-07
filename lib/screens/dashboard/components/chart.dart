import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90.0,
              centerSpaceRadius: 70,
              sectionsSpace: 0,
              sections: pieChartSelectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  '29.1',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text('of 128GB')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    color: primaryColor,
    value: 25.0,
    showTitle: false,
    radius: 25.0,
  ),
  PieChartSectionData(
    color: Color(0xff26e5ff),
    value: 20.0,
    showTitle: false,
    radius: 22.0,
  ),
  PieChartSectionData(
    color: Color(0xffffcf26),
    value: 10.0,
    showTitle: false,
    radius: 19.0,
  ),
  PieChartSectionData(
    color: Color(0xffee2727),
    value: 15.0,
    showTitle: false,
    radius: 16.0,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 25.0,
    showTitle: false,
    radius: 13.0,
  ),
];
