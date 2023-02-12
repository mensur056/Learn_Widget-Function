import 'package:flutter/material.dart';
import 'package:widget_function/flutter_localization/core/language_model.dart';

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
      body: Column(),
    );
  }
}
