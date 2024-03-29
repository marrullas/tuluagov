import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        
          children: <Widget>[
            RaisedButton(
              onPressed: controller.loginWithGoogle,
              child: Text('Login Google'),
            ),
            RaisedButton(
              onPressed: () {
                Modular.to.pushNamed('/news');
              },
              child: Text('ver noticias'),
            ),
            RaisedButton(
              onPressed: () {
                Modular.to.pushNamed('/home');
              },
              child: Text('ir al home'),
            ),
            RaisedButton(
              onPressed: () {
                Modular.to.pushNamed('/todo');
              },
              child: Text('ver todo'),
            )
          ],
      
      ),
    );
  }
}
