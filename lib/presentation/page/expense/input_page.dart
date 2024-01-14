import 'package:flutter/material.dart';

//　タブで支出入力と支出入力の切り替えを行う
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> with TickerProviderStateMixin {
  TabController? _tabController;
  int _selectedIndex = 0;

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
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.input),
              text: 'Input',
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'List',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: const Center(
              child: Text('Input'),
            ),
          ),
          Container(
            child: const Center(
              child: Text('List'),
            ),
          ),
        ],
      ),
    );
  }
}
