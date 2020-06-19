import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:new_bus_app/core/models/login_model.dart';
import 'package:new_bus_app/ui/pages/cadastro_page.dart';
import 'package:new_bus_app/ui/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController senhaController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();

  _cadastrar() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CadastroPage()),
    );
  }

  _login() async {
    LoginModel login = new LoginModel();
    login.senha = senhaController.text;
    login.email = emailController.text;
    Map<String, String> headers = {"Content-type": "application/json"};
    String url = 'http://192.168.2.104:8080/auth';
    Response response = await post(url, body: '{"email": "${login.email}", "senha": "${login.senha}"}', headers: headers);
    int statusCode = response.statusCode;
    if(statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("Senha ou usuario invalido."),
        duration: Duration(seconds: 3),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          padding: EdgeInsets.only(right: 24, left: 24),
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text("Login", style: TextStyle(
                      fontSize: 48,
                      color: Theme.of(context).primaryColor
                    )),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Informe seu e-mail",
                          labelText: "E-mail"
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: senhaController,
                        decoration: InputDecoration(
                          hintText: "Informe sua senha",
                          labelText: "Senha"
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                        onPressed: _login,
                        child: Text("Entrar", style: TextStyle(
                          fontSize: 24,
                          color: Colors.white
                        )),
                        color: Theme.of(context).primaryColor,
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                      ),
                      SizedBox(height: 24),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                          side: BorderSide(
                            color: Theme.of(context).primaryColor
                          )
                        ),
                        onPressed: _cadastrar,
                        child: Text("Cadastrar-se", style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).primaryColor
                        )),
                        color: Colors.white,
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
