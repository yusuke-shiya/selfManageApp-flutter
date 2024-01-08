import 'package:dio/dio.dart';
import 'package:self_manage_app/domain/user/entity/user.dart';
import 'package:self_manage_app/domain/user/user_repository.dart';

const url = 'https://selfmanageapp.onrender.com/user';

class UserApiRepository implements UserRepository {
  @override
  Future<User> get(String token) async {
    final dio = Dio();
    final response = await dio.get(
      url,
      options: Options(
        headers: {
          'Authorization': token,
        },
      ),
    );

    if (response.statusCode == 200) {
      print('user get');
      try {
        final data = response.data as dynamic;
        print('data');
        print(data);
        final user = User.fromJson(data);
        return user;
      } catch (e) {
        throw e;
      }
    } else {
      throw Exception('Failed to get user');
    }
  }

  @override
  Future<User> create(String name, String email, String token) async {
    final dio = Dio();
    final response = await dio.post(url,
        data: {'name': name, 'email': email},
        options: Options(
          headers: {
            'Authorization': token,
          },
        ));

    if (response.statusCode == 200) {
      print('user created');
      try {
        final data = response.data as dynamic;
        print('data');
        print(data);
        final user = User.fromJson(data);
        return user;
      } catch (e) {
        throw e;
      }
    } else {
      throw Exception('Failed to create user');
    }
  }
}
