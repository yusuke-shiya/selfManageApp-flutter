import 'package:dio/dio.dart';
import 'package:self_manage_app/domain/user/entity/user.dart';

class UserApiClient {
  Future<User?> createUser(String name, String email, String token) async {
    print('name');
    print(name);
    print('email');
    print(email);
    print('token');
    print(token);
    final dio = Dio();
    const url = 'https://selfmanageapp.onrender.com/user';
    final response = await dio.post(url,
        data: {'name': name, 'email': email},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
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
    }
  }

  // httpbin.orgで試してみる
  // final dio = Dio();
  // const url = 'https://httpbin.org/post';
  // final response = await dio.post(url,
  //     data: {'name': name, 'email': email},
  //     options: Options(
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': token,
  //       },
  //     ));
  // if (response.statusCode == 200) {
  //   print('user created');
  //   try {
  //     final data = response.data as dynamic;
  //     print('data');
  //     print(data);
  //     final user = User.fromJson(data);
  //     return user;
  //   } catch (e) {
  //     throw e;
  //   }
  // }
}
