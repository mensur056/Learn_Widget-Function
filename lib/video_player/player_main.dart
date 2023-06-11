import 'package:flutter/material.dart';

import '../timer_with_progress/timer_with_progress.dart';

class MyAppVideoPlayer extends StatelessWidget {
  const MyAppVideoPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: TimerView(),
    );
  }
}
