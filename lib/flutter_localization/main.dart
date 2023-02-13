import 'package:flutter/material.dart';
import 'view/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationMyApp extends StatefulWidget {
  const LocalizationMyApp({super.key});

  @override
  State<LocalizationMyApp> createState() => _LocalizationMyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _LocalizationMyAppState? state = context.findAncestorStateOfType<_LocalizationMyAppState>();
    state?.setLocale(newLocale);
  }
}

class _LocalizationMyAppState extends State<LocalizationMyApp> {
  Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Material App',
      home: const LocalizationHomePage(),
    );
  }
}
