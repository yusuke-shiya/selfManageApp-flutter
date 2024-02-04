// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Expense _$ExpenseFromJson(Map<String, dynamic> json) {
  return _Expense.fromJson(json);
}

/// @nodoc
mixin _$Expense {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  ExpenseIncome get income => throw _privateConstructorUsedError;
  List<ExpenseOutcome> get outcomes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseCopyWith<Expense> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res, Expense>;
  @useResult
  $Res call(
      {int year,
      int month,
      ExpenseIncome income,
      List<ExpenseOutcome> outcomes});

  $ExpenseIncomeCopyWith<$Res> get income;
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res, $Val extends Expense>
    implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? income = null,
    Object? outcomes = null,
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
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as ExpenseIncome,
      outcomes: null == outcomes
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<ExpenseOutcome>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseIncomeCopyWith<$Res> get income {
    return $ExpenseIncomeCopyWith<$Res>(_value.income, (value) {
      return _then(_value.copyWith(income: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpenseImplCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$$ExpenseImplCopyWith(
          _$ExpenseImpl value, $Res Function(_$ExpenseImpl) then) =
      __$$ExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int year,
      int month,
      ExpenseIncome income,
      List<ExpenseOutcome> outcomes});

  @override
  $ExpenseIncomeCopyWith<$Res> get income;
}

/// @nodoc
class __$$ExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseCopyWithImpl<$Res, _$ExpenseImpl>
    implements _$$ExpenseImplCopyWith<$Res> {
  __$$ExpenseImplCopyWithImpl(
      _$ExpenseImpl _value, $Res Function(_$ExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? income = null,
    Object? outcomes = null,
  }) {
    return _then(_$ExpenseImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as ExpenseIncome,
      outcomes: null == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<ExpenseOutcome>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ExpenseImpl with DiagnosticableTreeMixin implements _Expense {
  const _$ExpenseImpl(
      {required this.year,
      required this.month,
      required this.income,
      required final List<ExpenseOutcome> outcomes})
      : _outcomes = outcomes;

  factory _$ExpenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseImplFromJson(json);

  @override
  final int year;
  @override
  final int month;
  @override
  final ExpenseIncome income;
  final List<ExpenseOutcome> _outcomes;
  @override
  List<ExpenseOutcome> get outcomes {
    if (_outcomes is EqualUnmodifiableListView) return _outcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outcomes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Expense(year: $year, month: $month, income: $income, outcomes: $outcomes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Expense'))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('income', income))
      ..add(DiagnosticsProperty('outcomes', outcomes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.income, income) || other.income == income) &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, income,
      const DeepCollectionEquality().hash(_outcomes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseImplCopyWith<_$ExpenseImpl> get copyWith =>
      __$$ExpenseImplCopyWithImpl<_$ExpenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseImplToJson(
      this,
    );
  }
}

abstract class _Expense implements Expense {
  const factory _Expense(
      {required final int year,
      required final int month,
      required final ExpenseIncome income,
      required final List<ExpenseOutcome> outcomes}) = _$ExpenseImpl;

  factory _Expense.fromJson(Map<String, dynamic> json) = _$ExpenseImpl.fromJson;

  @override
  int get year;
  @override
  int get month;
  @override
  ExpenseIncome get income;
  @override
  List<ExpenseOutcome> get outcomes;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseImplCopyWith<_$ExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpenseIncome _$ExpenseIncomeFromJson(Map<String, dynamic> json) {
  return _ExpenseIncome.fromJson(json);
}

/// @nodoc
mixin _$ExpenseIncome {
  String get incomeUuid => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseIncomeCopyWith<ExpenseIncome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseIncomeCopyWith<$Res> {
  factory $ExpenseIncomeCopyWith(
          ExpenseIncome value, $Res Function(ExpenseIncome) then) =
      _$ExpenseIncomeCopyWithImpl<$Res, ExpenseIncome>;
  @useResult
  $Res call({String incomeUuid, int amount});
}

/// @nodoc
class _$ExpenseIncomeCopyWithImpl<$Res, $Val extends ExpenseIncome>
    implements $ExpenseIncomeCopyWith<$Res> {
  _$ExpenseIncomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomeUuid = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      incomeUuid: null == incomeUuid
          ? _value.incomeUuid
          : incomeUuid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseIncomeImplCopyWith<$Res>
    implements $ExpenseIncomeCopyWith<$Res> {
  factory _$$ExpenseIncomeImplCopyWith(
          _$ExpenseIncomeImpl value, $Res Function(_$ExpenseIncomeImpl) then) =
      __$$ExpenseIncomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String incomeUuid, int amount});
}

/// @nodoc
class __$$ExpenseIncomeImplCopyWithImpl<$Res>
    extends _$ExpenseIncomeCopyWithImpl<$Res, _$ExpenseIncomeImpl>
    implements _$$ExpenseIncomeImplCopyWith<$Res> {
  __$$ExpenseIncomeImplCopyWithImpl(
      _$ExpenseIncomeImpl _value, $Res Function(_$ExpenseIncomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomeUuid = null,
    Object? amount = null,
  }) {
    return _then(_$ExpenseIncomeImpl(
      incomeUuid: null == incomeUuid
          ? _value.incomeUuid
          : incomeUuid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ExpenseIncomeImpl
    with DiagnosticableTreeMixin
    implements _ExpenseIncome {
  const _$ExpenseIncomeImpl({required this.incomeUuid, required this.amount});

  factory _$ExpenseIncomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseIncomeImplFromJson(json);

  @override
  final String incomeUuid;
  @override
  final int amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpenseIncome(incomeUuid: $incomeUuid, amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExpenseIncome'))
      ..add(DiagnosticsProperty('incomeUuid', incomeUuid))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseIncomeImpl &&
            (identical(other.incomeUuid, incomeUuid) ||
                other.incomeUuid == incomeUuid) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, incomeUuid, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseIncomeImplCopyWith<_$ExpenseIncomeImpl> get copyWith =>
      __$$ExpenseIncomeImplCopyWithImpl<_$ExpenseIncomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseIncomeImplToJson(
      this,
    );
  }
}

abstract class _ExpenseIncome implements ExpenseIncome {
  const factory _ExpenseIncome(
      {required final String incomeUuid,
      required final int amount}) = _$ExpenseIncomeImpl;

  factory _ExpenseIncome.fromJson(Map<String, dynamic> json) =
      _$ExpenseIncomeImpl.fromJson;

  @override
  String get incomeUuid;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseIncomeImplCopyWith<_$ExpenseIncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpenseOutcome _$ExpenseOutcomeFromJson(Map<String, dynamic> json) {
  return _ExpenseOutcome.fromJson(json);
}

/// @nodoc
mixin _$ExpenseOutcome {
  String get outcomeUuid => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseOutcomeCopyWith<ExpenseOutcome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseOutcomeCopyWith<$Res> {
  factory $ExpenseOutcomeCopyWith(
          ExpenseOutcome value, $Res Function(ExpenseOutcome) then) =
      _$ExpenseOutcomeCopyWithImpl<$Res, ExpenseOutcome>;
  @useResult
  $Res call({String outcomeUuid, int amount, String title, int day});
}

/// @nodoc
class _$ExpenseOutcomeCopyWithImpl<$Res, $Val extends ExpenseOutcome>
    implements $ExpenseOutcomeCopyWith<$Res> {
  _$ExpenseOutcomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomeUuid = null,
    Object? amount = null,
    Object? title = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      outcomeUuid: null == outcomeUuid
          ? _value.outcomeUuid
          : outcomeUuid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseOutcomeImplCopyWith<$Res>
    implements $ExpenseOutcomeCopyWith<$Res> {
  factory _$$ExpenseOutcomeImplCopyWith(_$ExpenseOutcomeImpl value,
          $Res Function(_$ExpenseOutcomeImpl) then) =
      __$$ExpenseOutcomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String outcomeUuid, int amount, String title, int day});
}

/// @nodoc
class __$$ExpenseOutcomeImplCopyWithImpl<$Res>
    extends _$ExpenseOutcomeCopyWithImpl<$Res, _$ExpenseOutcomeImpl>
    implements _$$ExpenseOutcomeImplCopyWith<$Res> {
  __$$ExpenseOutcomeImplCopyWithImpl(
      _$ExpenseOutcomeImpl _value, $Res Function(_$ExpenseOutcomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomeUuid = null,
    Object? amount = null,
    Object? title = null,
    Object? day = null,
  }) {
    return _then(_$ExpenseOutcomeImpl(
      outcomeUuid: null == outcomeUuid
          ? _value.outcomeUuid
          : outcomeUuid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ExpenseOutcomeImpl
    with DiagnosticableTreeMixin
    implements _ExpenseOutcome {
  const _$ExpenseOutcomeImpl(
      {required this.outcomeUuid,
      required this.amount,
      required this.title,
      required this.day});

  factory _$ExpenseOutcomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseOutcomeImplFromJson(json);

  @override
  final String outcomeUuid;
  @override
  final int amount;
  @override
  final String title;
  @override
  final int day;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpenseOutcome(outcomeUuid: $outcomeUuid, amount: $amount, title: $title, day: $day)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExpenseOutcome'))
      ..add(DiagnosticsProperty('outcomeUuid', outcomeUuid))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('day', day));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseOutcomeImpl &&
            (identical(other.outcomeUuid, outcomeUuid) ||
                other.outcomeUuid == outcomeUuid) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, outcomeUuid, amount, title, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseOutcomeImplCopyWith<_$ExpenseOutcomeImpl> get copyWith =>
      __$$ExpenseOutcomeImplCopyWithImpl<_$ExpenseOutcomeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseOutcomeImplToJson(
      this,
    );
  }
}

abstract class _ExpenseOutcome implements ExpenseOutcome {
  const factory _ExpenseOutcome(
      {required final String outcomeUuid,
      required final int amount,
      required final String title,
      required final int day}) = _$ExpenseOutcomeImpl;

  factory _ExpenseOutcome.fromJson(Map<String, dynamic> json) =
      _$ExpenseOutcomeImpl.fromJson;

  @override
  String get outcomeUuid;
  @override
  int get amount;
  @override
  String get title;
  @override
  int get day;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseOutcomeImplCopyWith<_$ExpenseOutcomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
