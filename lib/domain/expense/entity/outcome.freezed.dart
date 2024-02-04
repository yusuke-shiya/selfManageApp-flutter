// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outcome.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Outcome _$OutcomeFromJson(Map<String, dynamic> json) {
  return _Outcome.fromJson(json);
}

/// @nodoc
mixin _$Outcome {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutcomeCopyWith<Outcome> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutcomeCopyWith<$Res> {
  factory $OutcomeCopyWith(Outcome value, $Res Function(Outcome) then) =
      _$OutcomeCopyWithImpl<$Res, Outcome>;
  @useResult
  $Res call({int year, int month, int day, int amount, String title});
}

/// @nodoc
class _$OutcomeCopyWithImpl<$Res, $Val extends Outcome>
    implements $OutcomeCopyWith<$Res> {
  _$OutcomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? amount = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutcomeImplCopyWith<$Res> implements $OutcomeCopyWith<$Res> {
  factory _$$OutcomeImplCopyWith(
          _$OutcomeImpl value, $Res Function(_$OutcomeImpl) then) =
      __$$OutcomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int month, int day, int amount, String title});
}

/// @nodoc
class __$$OutcomeImplCopyWithImpl<$Res>
    extends _$OutcomeCopyWithImpl<$Res, _$OutcomeImpl>
    implements _$$OutcomeImplCopyWith<$Res> {
  __$$OutcomeImplCopyWithImpl(
      _$OutcomeImpl _value, $Res Function(_$OutcomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? amount = null,
    Object? title = null,
  }) {
    return _then(_$OutcomeImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$OutcomeImpl with DiagnosticableTreeMixin implements _Outcome {
  const _$OutcomeImpl(
      {required this.year,
      required this.month,
      required this.day,
      required this.amount,
      required this.title});

  factory _$OutcomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutcomeImplFromJson(json);

  @override
  final int year;
  @override
  final int month;
  @override
  final int day;
  @override
  final int amount;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Outcome(year: $year, month: $month, day: $day, amount: $amount, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Outcome'))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutcomeImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, day, amount, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutcomeImplCopyWith<_$OutcomeImpl> get copyWith =>
      __$$OutcomeImplCopyWithImpl<_$OutcomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutcomeImplToJson(
      this,
    );
  }
}

abstract class _Outcome implements Outcome {
  const factory _Outcome(
      {required final int year,
      required final int month,
      required final int day,
      required final int amount,
      required final String title}) = _$OutcomeImpl;

  factory _Outcome.fromJson(Map<String, dynamic> json) = _$OutcomeImpl.fromJson;

  @override
  int get year;
  @override
  int get month;
  @override
  int get day;
  @override
  int get amount;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$OutcomeImplCopyWith<_$OutcomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
