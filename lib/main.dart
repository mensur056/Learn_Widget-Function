import 'package:flutter/material.dart';
import 'package:widget_function/mobx_using/viewmodel/mobx_view_model.dart';

import 'correct_login_page/login_view.dart';

void main() {
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
        home: LoginPageView());
  }
}
