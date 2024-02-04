import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/domain/expense/entity/expense.dart';
import 'package:self_manage_app/application/usecase/expense/expense_usecase.dart';

final expenseProvider =
    AsyncNotifierProvider<ExpenseNotifier, Expense?>(ExpenseNotifier.new);

class ExpenseNotifier extends AsyncNotifier<Expense?> {
  @override
  Expense? build() {
    return null;
  }

  Future<void> get(int year, int month, String token) async {
    state = const AsyncValue.loading();
    try {
      final expense = await ref.read(expenseUseCaseProvider).getExpense(
            year,
            month,
            token,
          );
      state = AsyncValue.data(expense);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
