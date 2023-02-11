import 'package:flutter/material.dart';

import 'view.dart';

class BlocMyApp2 extends StatelessWidget {
  const BlocMyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: BlocHomePage(),
    );
  }
}
