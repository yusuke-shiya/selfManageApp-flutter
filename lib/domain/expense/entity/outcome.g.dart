// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outcome.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OutcomeImpl _$$OutcomeImplFromJson(Map<String, dynamic> json) =>
    _$OutcomeImpl(
      year: json['year'] as int,
      month: json['month'] as int,
      day: json['day'] as int,
      amount: json['amount'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$OutcomeImplToJson(_$OutcomeImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'amount': instance.amount,
      'title': instance.title,
    };
