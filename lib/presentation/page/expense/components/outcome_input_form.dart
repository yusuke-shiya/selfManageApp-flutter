import 'package:flutter/material.dart';

class OutcomeInputForm extends StatefulWidget {
  const OutcomeInputForm({Key? key}) : super(key: key);

  @override
  State<OutcomeInputForm> createState() => OutcomeInputFormState();
}

class OutcomeInputFormState extends State<OutcomeInputForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('支出入力'),
      ),
    );
  }
}
