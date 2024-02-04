import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/application/usecase/auth/state/auth_provider.dart';
import 'package:self_manage_app/application/usecase/expense/state/expense_providar.dart';
import 'package:self_manage_app/presentation/page/expense/input_page.dart';

class ExpensePage extends ConsumerStatefulWidget {
  const ExpensePage({Key? key}) : super(key: key);

  @override
  _ExpensePageState createState() => _ExpensePageState();
}

class _ExpensePageState extends ConsumerState<ExpensePage> {
  @override
  void initState() {
    super.initState();
    fetchExpense();
  }

  fetchExpense() async {
    ref
        .read(expenseProvider.notifier)
        .get(2024, 2, await ref.read(authStateProvider.notifier).token);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final expenseState = ref.watch(expenseProvider);
    if (expenseState.isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    expenseState.when(
      data: (data) => print(
        'data: $data',
      ),
      loading: () => print('loading'),
      error: (error, stackTrace) => print('error: $error'),
    );

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const Drawer(
        width: 360,
        child: InputPage(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: 360,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        padding: const EdgeInsets.all(0),
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios)),
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
                        padding: const EdgeInsets.all(0),
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const SizedBox(
                  height: 52,
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
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
                                color: Theme.of(context).primaryColor,
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
                              color: Theme.of(context).dividerColor,
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
                ),
                const SizedBox(
                  height: 40,
                ),
                // 収支を表示
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        // TODO: DataTableのborderと同じ色にしたい
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('収支',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('¥900,000',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                // 支出一覧を表示
                const Text(
                  '支出一覧',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: double.infinity,
                  child: DataTable(
                    headingRowHeight: 0,
                    horizontalMargin: 0,
                    columnSpacing: 0,
                    columns: const [
                      DataColumn(label: Text('')),
                      DataColumn(label: Text(''), numeric: true),
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
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scaffoldKey.currentState!.openEndDrawer();
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
