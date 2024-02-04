import 'package:dio/dio.dart';
import 'package:self_manage_app/domain/expense/entity/income.dart';
import 'package:self_manage_app/domain/expense/entity/outcome.dart';
import 'package:self_manage_app/domain/expense/expense_repository.dart';

const url = 'https://selfmanageapp.onrender.com/expense';

class ExpenseApiRepository implements ExpenseRepository {
  final _dio = Dio();

  @override
  Future<Income> createIncome(
      int year, int month, int amount, String token) async {
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

  @override
  Future<Outcome> createOutcome(int year, int month, int day, int amount,
      String title, String token) async {
    final response = await _dio.post(
      url,
      data: {
        'year': year,
        'month': month,
        'day': day,
        'amount': amount,
        'title': title
      },
      options: Options(
        headers: {
          'Authorization': token,
        },
      ),
    );

    if (response.statusCode == 200) {
      return Outcome(
        year: year,
        month: month,
        day: day,
        amount: amount,
        title: title,
      );
    } else {
      throw Exception('Failed to create outcome');
    }
  }
}
