class FirebaseModel {
  String? avatar;
  String? color;
  String? email;
  String? firstName;
  int? id;
  String? lastName;

  FirebaseModel({this.avatar, this.color, this.email, this.firstName, this.id, this.lastName});
  int get changeColorValue {
    var newColors = color?.replaceFirst('#', '0xFF');
    return int.tryParse(newColors ?? '') ?? 0;
  }

  FirebaseModel.fromJson(Map<String, dynamic> json) {
    avatar = json['avatar'];
    color = json['color'];
    email = json['email'];
    firstName = json['first_name'];
    id = json['id'];
    lastName = json['last_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['avatar'] = avatar;
    data['color'] = color;
    data['email'] = email;
    data['first_name'] = firstName;
    data['id'] = id;
    data['last_name'] = lastName;
    return data;
  }
}
