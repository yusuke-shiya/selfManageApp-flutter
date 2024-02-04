import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/expense/entity/income.dart';
import 'package:self_manage_app/domain/expense/entity/outcome.dart';
import 'package:self_manage_app/domain/expense/expense_repository.dart';

class ExpenseUseCase {
  final ExpenseRepository expenseRepository;

  ExpenseUseCase(this.expenseRepository);

  Future<Income> createIncome(
      int year, int month, int amount, String token) async {
    return await expenseRepository.createIncome(
      year,
      month,
      amount,
      token,
    );
  }

  Future<Outcome> createOutcome(int year, int month, int day, int amount,
      String title, String token) async {
    return await expenseRepository.createOutcome(
      year,
      month,
      day,
      amount,
      title,
      token,
    );
  }
}

final expenseUseCaseProvider = Provider<ExpenseUseCase>((ref) {
  return ExpenseUseCase(ref.read(expensiveRepositoryProvider));
});
