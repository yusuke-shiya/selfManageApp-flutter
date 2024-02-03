import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'income.freezed.dart';
part 'income.g.dart';

@freezed
class Income with _$Income {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Income({
    required int year,
    required int month,
    required int amount,
  }) = _Income;

  factory Income.fromJson(Map<String, dynamic> json) => _$IncomeFromJson(json);
}
