import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<IFirebaseService>(context, listen: false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: emailController),
          TextField(
            controller: idController,
          ),
          ElevatedButton(
              onPressed: () async {
                await authService.signUp(email: emailController.text, password: idController.text);
              },
              child: const Text('Create User'))
        ],
      ),
    );
  }
}
