class UserModel {
  String? email;
  String? password;
  bool? returnSecureToken;

  UserModel({this.email, this.password, this.returnSecureToken});

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    returnSecureToken = json['returnSecureToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['returnSecureToken'] = returnSecureToken;
    return data;
  }
}

class UserModel2 {
  String? email;
  String? password;

  UserModel2({
    this.email,
    this.password,
  });

  UserModel2.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
