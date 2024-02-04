import 'package:self_manage_app/domain/expense/entity/income.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/expense/entity/outcome.dart';

abstract class ExpenseRepository {
  Future<Income> createIncome(int year, int month, int amount, String token);
  Future<Outcome> createOutcome(
      int year, int month, int day, int amount, String title, String token);
}

final expensiveRepositoryProvider = Provider<ExpenseRepository>((ref) {
  throw UnimplementedError();
});
