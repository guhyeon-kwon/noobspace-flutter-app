import 'package:dio/dio.dart';
import 'package:noobspace/model/login_model.dart';
import 'package:noobspace/model/account_model.dart';
import 'package:retrofit/retrofit.dart';

part 'login_repository.g.dart';

@RestApi(baseUrl: "https://dummyjson.com/")
abstract class LoginRepository {
  factory LoginRepository(Dio dio, {String? baseUrl}) =
  _LoginRepository;

  @POST("/auth/login")
  Future<AccountModel> login(@Body() LoginModel loginModel);
}