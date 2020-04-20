import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'solidaridad_controller.dart';

class SolidaridadPage extends StatefulWidget {
  final String title;
  const SolidaridadPage({Key key, this.title = "Solidaridad"})
      : super(key: key);

  @override
  _SolidaridadPageState createState() => _SolidaridadPageState();
}

class _SolidaridadPageState
    extends ModularState<SolidaridadPage, SolidaridadController> {
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
                'Solidaridad',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40,color: Colors.grey[800]),
            ),
           Text(
                'Tuluá Un Solo Corazón',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,color: Colors.grey[800]),
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
                          GestureDetector(child: Icon(Icons.help,color: Colors.blue,size: 50,),
                          onTap:() => Modular.to.pushNamed('/'),),
                          Text('AYUDA',style: TextStyle(color: Colors.blue),),
                          Text('Solicita ayuda', style: TextStyle(color: Colors.blueGrey),)
                          
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
                          Icon(Icons.card_giftcard,color: Colors.brown,size: 50,),
                          Text('AYUDAR',style: TextStyle(color: Colors.brown)),
                          Text('Puedo ayudar', style: TextStyle(color: Colors.blueGrey),)
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
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(child: Icon(Icons.score,color: Colors.purple,size: 50,),
                          onTap:() => Modular.to.pushNamed('/solidaridad/estadistica'),),
                          Text('ESTADISTICAS',style: TextStyle(color: Colors.purple),),
                          Text('Así de grande es nuestro Corazon', style: TextStyle(color: Colors.blueGrey),textAlign: TextAlign.center,)
                          
                        ],
                      ),
                    ),
                  ),

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
