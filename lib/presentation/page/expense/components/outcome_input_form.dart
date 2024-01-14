import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OutcomeInputForm extends StatefulWidget {
  const OutcomeInputForm({Key? key}) : super(key: key);

  @override
  State<OutcomeInputForm> createState() => OutcomeInputFormState();
}

class OutcomeInputFormState extends State<OutcomeInputForm> {
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
            // タイトル
            const TextField(
              decoration: InputDecoration(
                labelText: 'タイトル',
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
