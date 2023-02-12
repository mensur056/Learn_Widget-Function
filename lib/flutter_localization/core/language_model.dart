class LanguageModel {
  final int id;
  final String name;
  final String languageCode;
  LanguageModel({required this.id, required this.languageCode, required this.name});

  static List<LanguageModel> languageList() {
    return <LanguageModel>[
      LanguageModel(id: 1, languageCode: 'en', name: 'English'),
      LanguageModel(id: 2, languageCode: 'tr', name: 'Turkhis'),
    ];
  }
}
