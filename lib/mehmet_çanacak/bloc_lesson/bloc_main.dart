import 'package:flutter/material.dart';

import 'project1/bloc_project1.dart';

class BlocMyApp extends StatelessWidget {
  const BlocMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProject1Page(),
    );
  }
}
