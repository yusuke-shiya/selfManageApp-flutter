import 'package:dio/dio.dart';
import 'package:self_manage_app/domain/user/entity/user.dart';
import 'package:self_manage_app/domain/user/user_repository.dart';

const url = 'https://selfmanageapp.onrender.com/user';

class UserApiRepository implements UserRepository {
  final _dio = Dio();

  @override
  Future<User> get(String token) async {
    final response = await _dio.get(
      url,
      options: Options(
        headers: {
          'Authorization': token,
        },
      ),
    );

    if (response.statusCode == 200) {
      try {
        final data = response.data as dynamic;
        final user = User.fromJson(data);
        return user;
      } catch (e) {
        print('error');
        print(e);
        throw e;
      }
    } else {
      throw Exception('Failed to get user');
    }
  }

  @override
  Future<User> create(String name, String email, String token) async {
    final response = await _dio.post(url,
        data: {'name': name, 'email': email},
        options: Options(
          headers: {
            'Authorization': token,
          },
        ));

    if (response.statusCode == 200) {
      try {
        final data = response.data as dynamic;
        final user = User.fromJson(data);
        return user;
      } catch (e) {
        print('error');
        print(e);
        throw e;
      }
    } else {
      throw Exception('Failed to create user');
    }
  }
}
