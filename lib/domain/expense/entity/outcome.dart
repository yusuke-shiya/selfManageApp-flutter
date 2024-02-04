import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'outcome.freezed.dart';
part 'outcome.g.dart';

@freezed
class Outcome with _$Outcome {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Outcome({
    required int year,
    required int month,
    required int day,
    required int amount,
    required String title,
  }) = _Outcome;

  factory Outcome.fromJson(Map<String, dynamic> json) =>
      _$OutcomeFromJson(json);
}
