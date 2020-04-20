import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'convivencia_controller.dart';

class ConvivenciaPage extends StatefulWidget {
  final String title;
  const ConvivenciaPage({Key key, this.title = "Convivencia"})
      : super(key: key);

  @override
  _ConvivenciaPageState createState() => _ConvivenciaPageState();
}

class _ConvivenciaPageState
    extends ModularState<ConvivenciaPage, ConvivenciaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back, color:Colors.green),
        onPressed: (){
          Modular.to.pop();
        }),
        //title: Text(widget.title, style: TextStyle(color: Colors.green),),
      ),
      body: SingleChildScrollView(
              child: Container(
                
                child: Column(
          children: <Widget>[
            SizedBox(
                height: 50,
            ),
             
            Text(
                'Convivencia',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40,color: Colors.grey[800]),
            ),
           
            Center(
                  child: Image.asset(
                'assets/logo_alcaldia.jpg',
                height: 200,
            )),
           
            SizedBox(height: 30,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,

                          boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 20,offset: Offset(0,10)
                          )
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(child: Icon(Icons.add_alert,color: Colors.blue,size: 50,),
                          onTap:() => Modular.to.pushNamed('/'),),
                          Text('RUTAS',style: TextStyle(color: Colors.blue),),
                          
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,

                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 20,offset: Offset(0,10)
                            )
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          Icon(Icons.assistant,color: Colors.blueGrey,size: 50,),
                          Text('DENUNCIAS',style: TextStyle(color: Colors.blueGrey)),
                          Text('Reporta', style: TextStyle(color: Colors.blueGrey),)
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
                      decoration: BoxDecoration(
                          color: Colors.white,

                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 20,offset: Offset(0,10)
                            )
                          ]
                      ),                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          Icon(Icons.track_changes,color: Colors.redAccent,size: 50,),
                          Text('BOTON PANICO',style: TextStyle(color: Colors.black)),
                          Text('¿Estas en peligro?',textAlign: TextAlign.center,style: TextStyle(color: Colors.brown))
                        ],
                      ),
                    ),
                  )
                ],
            ),
            SizedBox(height: 30,),
            Text('Copyright (c) 2020 TicBox'),
            Text('All rights reserved')
          ],
        ),
              ),
      ),
    
    );
  }
}
