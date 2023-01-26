import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:widget_function/mobx_using/viewmodel/mobx_view_model.dart';

import 'mobx_using/mobx_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final TaskManagerViewModel viewmodel = TaskManagerViewModel();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: viewmodel.isDarkTheme ? ThemeData.light() : ThemeData.dark(),
          home: const TaskView()),
    );
  }
}
