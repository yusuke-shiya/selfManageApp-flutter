import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IncomeInputForm extends StatefulWidget {
  const IncomeInputForm({Key? key}) : super(key: key);

  @override
  State<IncomeInputForm> createState() => _IncomeInputFormState();
}

class _IncomeInputFormState extends State<IncomeInputForm> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // 金額
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              textAlign: TextAlign.right,
              decoration: const InputDecoration(
                labelText: '金額',
                prefix: Text('¥'),
              ),
            ),
            // 日付
            const TextField(
              decoration: InputDecoration(
                labelText: '日付',
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('保存'),
          ),
        ),
      ],
    );
  }
}
