import 'package:flutter/material.dart';

import 'internet_view.dart';

class InternetMain extends StatelessWidget {
  const InternetMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Material App', home: InternetView());
  }
}
