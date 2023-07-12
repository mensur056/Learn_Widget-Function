import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_function/todo_app/theme.dart';

import 'provider/home_provider.dart';
import 'view/home_page.dart';

class MyToDoApp extends StatelessWidget {
  const MyToDoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TodoProvider(),
        )
      ],
      child: Consumer<TodoProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            theme: provider.isRedTheme ? AppTheme().redTheme : AppTheme().greenTheme,
            debugShowCheckedModeBanner: false,
            title: 'Material App',
            home: TodoListScreen(),
          );
        },
      ),
    );
  }
}
