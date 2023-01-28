import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'google_controller.dart';

class GoogleAuthView extends StatefulWidget {
  const GoogleAuthView({super.key});

  @override
  State<GoogleAuthView> createState() => _GoogleAuthViewState();
}

class _GoogleAuthViewState extends State<GoogleAuthView> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() {
        if (controller.googleAccountSignIn.value == null) {
          return _buildLogin();
        } else {
          return _buildProfileView();
        }
      }),
    );
  }

  Widget _buildLogin() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: ListTile(
            onTap: () {
              controller.login();
            },
            leading: const Icon(Icons.g_mobiledata_outlined),
            title: const Text('Sing in Google'),
          ),
        )
      ],
    );
  }

  Widget _buildProfileView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircleAvatar(
          radius: 30,
        ),
        Text('Name')
      ],
    );
  }
}
