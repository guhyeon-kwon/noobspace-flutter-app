import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/login_model.dart';
import '../repository/login_repository.dart';
import '../views/desk_page.dart';

class AuthController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  static AuthController authInstance = Get.find();
  final dio = Dio();

  // kminchelle
  // 0lelplR
  void login() async {
    dio.options.headers['Content-Type'] = 'application/json';
    final _loginRepository = LoginRepository(dio);
    try {
      final resp = await _loginRepository
          .login(LoginModel(username: usernameController.text, password: passwordController.text));
      if (resp != null) {
        Get.offAll(() => DeskPage());
      }
    } on DioException catch (error) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text('로그인 실패'),
              contentPadding: EdgeInsets.all(20),
              children: [
                Text("에러코드 : ${error.response!.statusCode.toString()}"),
                Text("메세지 : ${error.message}"),
              ],
            );
          });
    }
  }
}
