class RefreshModel {
  int? id;
  String? name;
  String? surname;
  String? title;
  String? color;
  int? age;

  RefreshModel({this.id, this.name, this.surname, this.title, this.color, this.age});
  int get changeColorValue {
    var newColors = color?.replaceFirst('#', '0xFF');
    return int.tryParse(newColors ?? '') ?? 0;
  }

  RefreshModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    surname = json['surname'];
    title = json['title'];
    color = json['color'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['surname'] = surname;
    data['title'] = title;
    data['color'] = color;
    data['age'] = age;
    return data;
  }
}
