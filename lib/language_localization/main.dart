import 'package:flutter/material.dart';
import 'package:widget_function/language_localization/view/home_page.dart';

class LanguageLocalizationMyApp extends StatelessWidget {
  const LanguageLocalizationMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: LanguageHomePage(),
    );
  }
}
