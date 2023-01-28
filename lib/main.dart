import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:widget_function/google_auth/google_auth_view.dart';
import 'package:widget_function/mobx_using/viewmodel/mobx_view_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final TaskManagerViewModel viewmodel = TaskManagerViewModel();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // theme: viewmodel.isDarkTheme ? ThemeData.light() : ThemeData.dark(),
        home: GoogleAuthView());
  }
}
