import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Principal"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        /*leading: IconButton(icon: Icon(Icons.arrow_back, color:Colors.green),
        onPressed: (){
          controller.logoff();
        }),*/
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                'Bienvenido',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, color: Colors.grey[800]),
              ),
              Center(
                  child: Image.asset(
                'assets/logo_alcaldia.jpg',
                height: 250,
              )),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 20,
                            offset: Offset(0, 10))
                      ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Icon(
                              Icons.alternate_email,
                              color: Colors.green,
                              size: 50,
                            ),
                            onTap: () => Modular.to.pushNamed('/news'),
                          ),
                          Text(
                            'Últimas noticias',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 20,
                            offset: Offset(0, 10))
                      ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                                                      child: Icon(
                              Icons.map,
                              color: Colors.orange,
                              size: 50,
                            ),
                            onTap: () => Modular.to.pushNamed('/turismo'),
                          ),
                          Text('Turismo',
                              style: TextStyle(color: Colors.orange)),
                          Text(
                            'Conoce el Corazón',
                            style: TextStyle(color: Colors.orange),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 20,
                            offset: Offset(0, 10))
                      ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Icon(
                              Icons.report,
                              color: Colors.red,
                              size: 50,
                            ),
                            onTap: () => Modular.to.pushNamed('/convivencia'),
                          ),
                          Text('Convivencia',
                              style: TextStyle(color: Colors.redAccent)),
                          Text('Denuncia/reporta',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.redAccent))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 20,
                            offset: Offset(0, 10))
                      ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                                                      child: Icon(
                              Icons.favorite_border,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            onTap: () => Modular.to.pushNamed('/solidaridad'),
                          ),
                          Text('Solidaridad',
                              style: TextStyle(color: Colors.brown)),
                          Text('Tuluá un solo Corazón',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.brown))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text('Copyright (c) 2020 TicBox'),
              Text('All rights reserved')
            ],
          ),
        ),
      ),
    );
  }
}
