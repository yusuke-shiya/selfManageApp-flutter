import 'package:flutter/material.dart';

class IncomeInputForm extends StatefulWidget {
  const IncomeInputForm({Key? key}) : super(key: key);

  @override
  State<IncomeInputForm> createState() => _IncomeInputFormState();
}

class _IncomeInputFormState extends State<IncomeInputForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('収入入力'),
      ),
    );
  }
}
