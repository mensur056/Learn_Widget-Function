import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'view/home_page.dart';

class LocalizationMyApp extends StatelessWidget {
  const LocalizationMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('tr'), // Spanish
      ],
      title: 'Material App',
      home: LocalizationHomePage(),
    );
  }
}
