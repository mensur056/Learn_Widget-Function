import 'package:flutter/material.dart';

class LanguageHomePage extends StatelessWidget {
  const LanguageHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Look your pet'),
        icon: const Icon(Icons.search),
      ),
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
