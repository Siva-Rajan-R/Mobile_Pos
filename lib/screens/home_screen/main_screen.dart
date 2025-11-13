import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/app_constants.dart';
import 'package:mobile_pos/core/sections/app_bar.dart';
import 'package:mobile_pos/core/widgets/chips.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: posAppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/inventory'),
            icon: Icon(Icons.inventory, color: Colors.white, size: 30),
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/account'),
            icon: Icon(Icons.person, color: Colors.white, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Revenue chips
            Container(
              height: 190,
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: appBgMildColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      revenueChipWidget(context, title: "Yesterday", revenueAmt: 5000),
                      revenueChipWidget(context, title: "Today", revenueAmt: 8000),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      revenueChipWidget(context, title: "Last Week", revenueAmt: 35000),
                      revenueChipWidget(context, title: "This Week", revenueAmt: 42000),
                    ],
                  ),
                ],
              ),
            ),

            // Stocks indicator
            Container(
              height: 130,
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: appBgMildColor,
                borderRadius: BorderRadius.circular(10),
                border: Border(top: BorderSide(color: appTextColor, width: 2)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  stocksIndicatorChipWidget(context, title: "Low Stocks", stocks: 70),
                  stocksIndicatorChipWidget(context, title: "Products", stocks: 100),
                  stocksIndicatorChipWidget(context, title: "Bills", stocks: 150),
                ],
              ),
            ),

            // Bills bar chart
            Container(
              height: 250,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: appBgMildColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bills", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: appTextColor)),
                  SizedBox(height: 10),
                  Expanded(
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                        borderData: FlBorderData(show: false),
                        gridData: FlGridData(show: true),
                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false, reservedSize: 28),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                const labels = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
                                if (value.toInt() >= 0 && value.toInt() < labels.length) {
                                  return Text(labels[value.toInt()], style: TextStyle(fontSize: 12));
                                }
                                return Text('');
                              },
                            ),
                          ),
                        ),
                        barGroups: [
                          BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 8, color: Colors.blueAccent, width: 18)]),
                          BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 10, color: Colors.blueAccent, width: 18)]),
                          BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 14, color: Colors.blueAccent, width: 18)]),
                          BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 15, color: Colors.blueAccent, width: 18)]),
                          BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 13, color: Colors.blueAccent, width: 18)]),
                          BarChartGroupData(x: 5, barRods: [BarChartRodData(toY: 10, color: Colors.blueAccent, width: 18)]),
                          BarChartGroupData(x: 6, barRods: [BarChartRodData(toY: 6, color: Colors.blueAccent, width: 18)]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Revenue bar chart
            Container(
              height: 250,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: appBgMildColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Revenue", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: appTextColor)),
                  SizedBox(height: 10),
                  Expanded(
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceBetween,
                        borderData: FlBorderData(show: false),
                        gridData: FlGridData(show: true),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];
                                if (value.toInt() >= 0 && value.toInt() < months.length) {
                                  return Text(months[value.toInt()], style: TextStyle(fontSize: 12));
                                }
                                return Text('');
                              },
                            ),
                          ),
                        ),
                        barGroups: [
                          BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 10, color: Colors.green, width: 18)]),
                          BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 12, color: Colors.green, width: 18)]),
                          BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 9, color: Colors.green, width: 18)]),
                          BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 15, color: Colors.green, width: 18)]),
                          BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 11, color: Colors.green, width: 18)]),
                          BarChartGroupData(x: 5, barRods: [BarChartRodData(toY: 13, color: Colors.green, width: 18)]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
