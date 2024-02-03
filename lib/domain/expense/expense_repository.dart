import 'package:self_manage_app/domain/expense/entity/income.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ExpenseRepository {
  Future<Income> createIncome(String name, String email, String token);
}

final expensiveRepositoryProvider = Provider<ExpenseRepository>((ref) {
  throw UnimplementedError();
});
