import 'package:self_manage_app/domain/expensive/entity/income.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ExpensiveRepository {
  Future<Income> createIncome(String name, String email, String token);
}

final expensiveRepositoryProvider = Provider<ExpensiveRepository>((ref) {
  throw UnimplementedError();
});
