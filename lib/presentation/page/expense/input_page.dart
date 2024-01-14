import 'package:flutter/material.dart';
import 'package:self_manage_app/presentation/page/expense/components/income_input_form.dart';
import 'package:self_manage_app/presentation/page/expense/components/outcome_input_form.dart';

//　タブで支出入力と支出入力の切り替えを行う
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> with TickerProviderStateMixin {
  TabController? _tabController;

  //　タブの中身
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  //　タブの表示
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text(
                '支出',
                style: TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
            Tab(
              child: Text(
                '収入',
                style: TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: TabBarView(
          controller: _tabController,
          children: const [
            OutcomeInputForm(),
            IncomeInputForm(),
          ],
        ),
      ),
    );
  }
}
