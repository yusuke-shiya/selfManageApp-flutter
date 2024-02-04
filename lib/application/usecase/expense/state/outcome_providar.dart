import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_manage_app/application/usecase/auth/state/auth_provider.dart';
import 'package:self_manage_app/application/usecase/expense/expense_usecase.dart';
import 'package:self_manage_app/domain/expense/entity/outcome.dart';

final outcomeProvider =
    AsyncNotifierProvider<OutcomeNotifier, Outcome>(OutcomeNotifier.new);

class OutcomeNotifier extends AsyncNotifier<Outcome> {
  @override
  Outcome build() {
    return Outcome(
      year: DateTime.now().year,
      month: DateTime.now().month,
      day: DateTime.now().day,
      amount: 0,
      title: '',
    );
  }

  Future<void> create(
      int year, int month, int day, int amount, String title) async {
    state = const AsyncValue.loading();
    try {
      final outcome = await ref.read(expenseUseCaseProvider).createOutcome(
            year,
            month,
            day,
            amount,
            title,
            await ref.read(authStateProvider.notifier).token,
          );
      state = AsyncValue.data(outcome);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
