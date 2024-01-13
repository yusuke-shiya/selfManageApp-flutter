import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpensePage extends StatelessWidget {
  const ExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                  const SizedBox(
                    width: 12,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "2024",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        "年",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        "月",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SizedBox(
                    width: 240,
                    height: 240,
                    child: PieChart(
                      PieChartData(
                        centerSpaceRadius: 70,
                        sectionsSpace: 0,
                        startDegreeOffset: -90,
                        sections: [
                          PieChartSectionData(
                            color: Colors.blue,
                            value: 10,
                            title: '',
                            radius: 50,
                          ),
                          PieChartSectionData(
                            color: const Color.fromARGB(255, 203, 203, 203),
                            value: 90,
                            title: '',
                            radius: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '¥100,000',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          height: 1,
                          width: 100,
                          color: Colors.black,
                        ),
                        const Text(
                          '¥1,000,000',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // 支出一覧を表示
              DataTable(
                columns: const [
                  DataColumn(label: Text('')),
                  DataColumn(label: Text('')),
                ],
                rows: List<DataRow>.generate(
                  10,
                  (index) => const DataRow(
                    cells: [
                      DataCell(Text('〇〇さんと飲み会')),
                      DataCell(Text('¥3,000')),
                    ],
                  ),
                ),
                showBottomBorder: true,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
