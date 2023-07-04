import 'package:flutter/material.dart';

import 'view/home_page.dart';

class MyToDoApp extends StatelessWidget {
  const MyToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ToDoHomePage(),
    );
  }
}
