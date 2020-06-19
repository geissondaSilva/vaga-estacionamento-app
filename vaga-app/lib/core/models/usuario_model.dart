class Usuario {
  int id;
  String nome;
  String senha;
  String email;
  String grupo;

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    senha = json['senha'];
    email = json['email'];
    grupo = json['grupo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
    json['id'] = id;
    json['nome'] = nome;
    json['senha'] = senha;
    json['email'] = email;
    json['grupo'] = grupo;
    return json;
  }
}