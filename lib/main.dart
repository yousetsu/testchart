import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('折れ線グラフのサンプル'),
      ),
      body: Center(
        child: LineChart(
          LineChartData(
           // titlesData: FlTitlesData(show: false),  // 軸のタイトルを非表示にする場合
            borderData: FlBorderData(show: true),   // グラフの枠線を表示する場合
            gridData: FlGridData(show: false),      // グリッドを非表示にする場合
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(1, 1),
                  FlSpot(2, 4),
                  FlSpot(3, 2),
                ],
                isCurved: true,
                color: Colors.blue,

                dotData: FlDotData(show: true),  // ドットを表示する場合
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: LineChartSample()));
