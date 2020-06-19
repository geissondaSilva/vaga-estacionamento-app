class LoginModel {
  String email;
  String senha;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
    json['email'] = email;
    json['senha'] = senha;
    return json;
  }
}