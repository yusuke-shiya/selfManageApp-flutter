// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseImpl _$$ExpenseImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseImpl(
      year: json['year'] as int,
      month: json['month'] as int,
      income: ExpenseIncome.fromJson(json['income'] as Map<String, dynamic>),
      outcomes: (json['outcomes'] as List<dynamic>)
          .map((e) => ExpenseOutcome.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExpenseImplToJson(_$ExpenseImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'income': instance.income,
      'outcomes': instance.outcomes,
    };

_$ExpenseIncomeImpl _$$ExpenseIncomeImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseIncomeImpl(
      incomeUuid: json['income_uuid'] as String,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$$ExpenseIncomeImplToJson(_$ExpenseIncomeImpl instance) =>
    <String, dynamic>{
      'income_uuid': instance.incomeUuid,
      'amount': instance.amount,
    };

_$ExpenseOutcomeImpl _$$ExpenseOutcomeImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseOutcomeImpl(
      outcomeUuid: json['outcome_uuid'] as String,
      amount: json['amount'] as int,
      title: json['title'] as String,
      day: json['day'] as int,
    );

Map<String, dynamic> _$$ExpenseOutcomeImplToJson(
        _$ExpenseOutcomeImpl instance) =>
    <String, dynamic>{
      'outcome_uuid': instance.outcomeUuid,
      'amount': instance.amount,
      'title': instance.title,
      'day': instance.day,
    };
