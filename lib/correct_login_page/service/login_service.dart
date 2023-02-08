import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:widget_function/correct_login_page/service/model/user_model.dart';

abstract class IService {
  int? statusCode;
  Future<void> postLogin(UserModel model);
  Future<void> postSignUp(UserModel model);
  Future<void> apiLoginFirebase(UserModel2 model);
}

class GeneralService implements IService {
  Dio dio = Dio();
  static const String firebaseUrl =
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBt2xTSJuPs46PMCwsEUDTixQKpysZBuT8';
  static const String signUp =
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBt2xTSJuPs46PMCwsEUDTixQKpysZBuT8';
  @override
  Future<void> postLogin(UserModel model) async {
    final jsonModel = jsonEncode(model.toJson());
    final response = await dio.post(firebaseUrl, data: jsonModel);
    if (response.statusCode == HttpStatus.ok) {
      statusCode = response.statusCode;
      return response.data;
    } else {
      return;
    }
  }

  @override
  Future<void> postSignUp(UserModel model) async {
    final response = await dio.post(signUp, data: model);
    if (response.statusCode == HttpStatus.ok) {
      FirebaseAuth.instance.createUserWithEmailAndPassword(email: model.email ?? '', password: model.password ?? '');
    }
  }

  @override
  int? statusCode;

  @override
  Future<void> apiLoginFirebase(UserModel2 model) async {
    final response = await dio.post('https://shopping-app-2238d-default-rtdb.firebaseio.com/users.json', data: model);
    if (response.statusCode == 200) {
      Map jsonData = jsonDecode(response.data);
      if (jsonData['email'] == model.email) {
        return;
      }
    }
  }
}
