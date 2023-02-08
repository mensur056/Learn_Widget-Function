import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_function/firebase_api/firebase_api_view.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/service.dart';
import 'package:widget_function/mobx_using/viewmodel/mobx_view_model.dart';

import 'mehmet_çanacak/firebase_auth/service/general_service.dart';

void main() {
  runApp(MyApp());
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
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          // theme: viewmodel.isDarkTheme ? ThemeData.light() : ThemeData.dark(),
          home: FirebaseApiView()),
    );
  }
}
