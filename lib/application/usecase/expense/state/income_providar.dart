import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/application/usecase/expense/expense_usecase.dart';
import 'package:self_manage_app/domain/expense/entity/income.dart';

final incomeProvider =
    AsyncNotifierProvider<IncomeNotifier, Income>(IncomeNotifier.new);

class IncomeNotifier extends AsyncNotifier<Income> {
  @override
  Income build() {
    return Income(
      year: DateTime.now().year,
      month: DateTime.now().month,
      amount: 0,
    );
  }

  Future<void> create(int year, int month, int amount, String token) async {
    state = const AsyncValue.loading();
    try {
      final income = await ref.read(expenseUseCaseProvider).createIncome(
            year,
            month,
            amount,
            token,
          );
      state = AsyncValue.data(income);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
