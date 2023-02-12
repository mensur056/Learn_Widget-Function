import 'package:flutter/material.dart';
import 'package:widget_function/flutter_localization/core/language_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationHomePage extends StatefulWidget {
  const LocalizationHomePage({super.key});

  @override
  State<LocalizationHomePage> createState() => _LocalizationHomePageState();
}

class _LocalizationHomePageState extends State<LocalizationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.homePage),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: DropdownButton(
                onChanged: (value) {},
                underline: const SizedBox(),
                icon: const Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                items: LanguageModel.languageList()
                    .map<DropdownMenuItem<LanguageModel>>(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Row(
                          children: [
                            Text(e.id.toString()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(e.name),
                            ),
                            Text(e.languageCode)
                          ],
                        ),
                      ),
                    )
                    .toList()),
          )
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.name,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              AppLocalizations.of(context)!.surname,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              AppLocalizations.of(context)!.age,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
