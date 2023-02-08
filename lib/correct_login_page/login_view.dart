import 'package:flutter/material.dart';
import 'package:widget_function/correct_login_page/home_page.dart';
import 'package:widget_function/correct_login_page/service/login_service.dart';
import 'package:widget_function/correct_login_page/service/model/user_model.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  late final IService service;
  @override
  void initState() {
    super.initState();
    service = GeneralService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
          ),
          TextField(
            controller: passwordController,
          ),
          ElevatedButton(
              onPressed: () async {
                final model = UserModel2(email: emailController.text, password: passwordController.text);
                await service.apiLoginFirebase(model);
              },
              child: const Text('Login In')),
          // ElevatedButton(
          //     onPressed: () async {
          //       await service.postLogin(
          //           UserModel(email: emailController.text, password: passwordController.text, returnSecureToken: true));
          //       if (service.statusCode == 200) {
          //         print('sdfsdf');
          //         Navigator.of(context).push(MaterialPageRoute(
          //           builder: (context) {
          //             return const HomePage();
          //           },
          //         ));
          //       } else {
          //         print('Sorry');
          //       }
          //     },
          //     child: const Text('Login')),
          ElevatedButton(
              onPressed: () async {
                await service.postSignUp(
                    UserModel(email: emailController.text, password: passwordController.text, returnSecureToken: true));
              },
              child: const Text('Register'))
        ],
      ),
    );
  }
}
