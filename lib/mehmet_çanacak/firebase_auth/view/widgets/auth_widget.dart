import 'package:flutter/material.dart';
import 'package:widget_function/correct_login_page/home_page.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/model/firebase_user_model.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/view/sing_in_page.dart';

class AuthWidgets extends StatelessWidget {
  const AuthWidgets({super.key, required this.snapshot});
  final AsyncSnapshot<FirebaseUserModel?> snapshot;
  @override
  Widget build(BuildContext context) {
    if (snapshot.connectionState == ConnectionState.active) {
      return snapshot.hasData ? const HomePage() : const SignInPage();
    }
    return const ErrorPage();
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Bit hata oldu'),
      ),
    );
  }
}
