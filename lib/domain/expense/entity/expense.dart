import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'expense.freezed.dart';
part 'expense.g.dart';

@freezed
class Expense with _$Expense {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Expense({
    required int year,
    required int month,
    required ExpenseIncome income,
    required List<ExpenseOutcome> outcomes,
  }) = _Expense;

  factory Expense.fromJson(Map<String, dynamic> json) =>
      _$ExpenseFromJson(json);
}

// TODO: 以下のクラスは設計を見直す必要があるかも
// IncomeクラスとOutcomeクラスのデータ形式に合わせて、ExpenseクラスではIncomeクラスとOutcomeクラスを使うようにするとか？

@freezed
class ExpenseIncome with _$ExpenseIncome {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ExpenseIncome({
    required String incomeUuid,
    required int amount,
  }) = _ExpenseIncome;

  factory ExpenseIncome.fromJson(Map<String, dynamic> json) =>
      _$ExpenseIncomeFromJson(json);
}

@freezed
class ExpenseOutcome with _$ExpenseOutcome {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ExpenseOutcome({
    required String outcomeUuid,
    required int amount,
    required String title,
    required int day,
  }) = _ExpenseOutcome;

  factory ExpenseOutcome.fromJson(Map<String, dynamic> json) =>
      _$ExpenseOutcomeFromJson(json);
}
