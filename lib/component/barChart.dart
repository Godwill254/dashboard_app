// ignore_for_file: prefer_const_constructors

import "package:dashboard_app/style/colors.dart";
import "package:flutter/material.dart";
import "package:fl_chart/fl_chart.dart";

class BarChartComponent extends StatelessWidget {
  const BarChartComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
            ),
          ),
        ),
        gridData: FlGridData(
          drawHorizontalLine: true,
          horizontalInterval: 30,
        ),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 10,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 50,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 30,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: 80,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                toY: 70,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                toY: 20,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 6,
            barRods: [
              BarChartRodData(
                toY: 90,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 7,
            barRods: [
              BarChartRodData(
                toY: 60,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 8,
            barRods: [
              BarChartRodData(
                toY: 90,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 9,
            barRods: [
              BarChartRodData(
                toY: 50,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 10,
            barRods: [
              BarChartRodData(
                toY: 70,
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
        ],
      ),
      swapAnimationDuration: Duration(microseconds: 150),
      swapAnimationCurve: Curves.linear,
    );
  }
}
