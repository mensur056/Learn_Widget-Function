import 'package:flutter/material.dart';

import 'project2/bloc_project2.dart';

class BlocMyApp extends StatelessWidget {
  const BlocMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProject2Page(),
    );
  }
}
