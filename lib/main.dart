import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/model/firebase_user_model.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/service.dart';
import 'package:widget_function/mobx_using/viewmodel/mobx_view_model.dart';

import 'flutter_localization/main.dart';
import 'mehmet_çanacak/firebase_auth/service/general_service.dart';
import 'mehmet_çanacak/firebase_auth/view/widgets/auth_widget.dart';
import 'mehmet_çanacak/firebase_auth/view/widgets/auth_widgets_builder.dart';

void main() async {
  // await Firebase.initializeApp();
  runApp(const LocalizationMyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final TaskManagerViewModel viewmodel = TaskManagerViewModel();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<IFirebaseService>(
          create: (_) => FirebaseGeneralService(),
        )
      ],
      child: AuthWidgetBuilder(
        onPageBuilder: (context, AsyncSnapshot<FirebaseUserModel?> snapshot) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: AuthWidgets(
              snapshot: snapshot,
            ),
          );
        },
      ),
    );
  }
}
