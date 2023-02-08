import 'package:flutter/material.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/model/firebase_user_model.dart';

class AuthWidgets extends StatelessWidget {
  const AuthWidgets({super.key, required this.snapshot});
  final AsyncSnapshot<FirebaseUserModel?> snapshot;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
