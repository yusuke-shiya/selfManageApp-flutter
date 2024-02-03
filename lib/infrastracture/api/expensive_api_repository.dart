import 'package:dio/dio.dart';
import 'package:self_manage_app/domain/expense/entity/income.dart';
import 'package:self_manage_app/domain/expense/expense_repository.dart';

const url = 'https://selfmanageapp.onrender.com/expense';

class ExpenseApiRepository implements ExpenseRepository {
  final _dio = Dio();

  @override
  Future<Income> createIncome(
      String year, String month, String amount, String token) async {
    final response = await _dio.post(
      url,
      data: {'year': year, 'month': month, 'amount': amount},
      options: Options(
        headers: {
          'Authorization': token,
        },
      ),
    );

    if (response.statusCode == 200) {
      return Income(
        year: year,
        month: month,
        amount: amount,
      );
    } else {
      throw Exception('Failed to create income');
    }
  }
}
