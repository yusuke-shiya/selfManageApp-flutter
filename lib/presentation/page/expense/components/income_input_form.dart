import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class IncomeInputForm extends StatefulWidget {
  const IncomeInputForm({Key? key}) : super(key: key);

  @override
  State<IncomeInputForm> createState() => _IncomeInputFormState();
}

class _IncomeInputFormState extends State<IncomeInputForm> {
  DateTime _date = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2000),
      lastDate: DateTime.now().add(Duration(days: 360)),
    );
    if (picked != null) setState(() => _date = picked);
  }

  // DateTime型の日付をString型に変換
  String _dateToString(DateTime date) {
    return DateFormat('yyyy/MM/dd').format(date);
  }

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
            // 日付
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Row(children: [
                Text('日付', style: TextStyle(fontSize: 16)),
                Spacer(),
                Text(_dateToString(_date), style: TextStyle(fontSize: 16)),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () => _selectDate(context),
                ),
              ]),
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
