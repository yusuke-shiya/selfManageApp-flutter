import 'package:self_manage_app/domain/expense/entity/income.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ExpenseRepository {
  Future<Income> createIncome(
      String year, String month, String amount, String token);
}

final expensiveRepositoryProvider = Provider<ExpenseRepository>((ref) {
  throw UnimplementedError();
});
