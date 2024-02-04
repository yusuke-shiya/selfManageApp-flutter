import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:self_manage_app/application/usecase/auth/state/auth_provider.dart';
import 'package:self_manage_app/application/usecase/expense/state/outcome_providar.dart';

class OutcomeInputForm extends ConsumerStatefulWidget {
  const OutcomeInputForm({Key? key}) : super(key: key);

  @override
  ConsumerState<OutcomeInputForm> createState() => OutcomeInputFormState();
}

class OutcomeInputFormState extends ConsumerState<OutcomeInputForm> {
  DateTime _date = DateTime.now();
  TextEditingController _amountController = TextEditingController();
  TextEditingController _titleController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2000),
      lastDate: DateTime.now().add(const Duration(days: 360)),
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
              controller: _amountController,
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
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'タイトル',
              ),
            ),
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
                const Text('日付', style: TextStyle(fontSize: 16)),
                const Spacer(),
                Text(_dateToString(_date),
                    style: const TextStyle(fontSize: 16)),
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
            onPressed: () async {
              final amount = int.parse(_amountController.text);
              final title = _titleController.text;
              ref.read(outcomeProvider.notifier).create(
                    _date.year,
                    _date.month,
                    _date.day,
                    amount,
                    title,
                    await ref.read(authStateProvider.notifier).token,
                  );
            },
            child: const Text('保存'),
          ),
        ),
      ],
    );
  }
}
