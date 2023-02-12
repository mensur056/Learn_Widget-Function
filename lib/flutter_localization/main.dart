import 'package:flutter/material.dart';
import 'view/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationMyApp extends StatelessWidget {
  const LocalizationMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      locale: Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Material App',
      home: LocalizationHomePage(),
    );
  }
}
