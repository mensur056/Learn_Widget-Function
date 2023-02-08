import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/model/firebase_user_model.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/service.dart';

class AuthWidgetBuilder extends StatelessWidget {
  const AuthWidgetBuilder({super.key, required this.onPageBuilder});
  final Widget Function(BuildContext context, AsyncSnapshot<FirebaseUserModel?> snapshot)
      onPageBuilder;
  @override
  Widget build(BuildContext context) {
    final authUserService = Provider.of<IFirebaseService>(context, listen: false);
    return StreamBuilder<FirebaseUserModel?>(
      stream: authUserService.onAuthStateChanged,
      builder: (context, AsyncSnapshot<FirebaseUserModel?> snapshot) {
        final userData = snapshot.data;
        if (userData != null) {
          return MultiProvider(
            providers: [
              Provider.value(value: userData),
            ],
            child: onPageBuilder(context, snapshot),
          );
        }
        return onPageBuilder(context, snapshot);
      },
    );
  }
}
