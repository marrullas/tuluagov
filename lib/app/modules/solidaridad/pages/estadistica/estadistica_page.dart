import 'package:flutter/material.dart';
import 'package:tuluagov/app/modules/solidaridad/widgets/piechart/lineschart_widget.dart';
import 'package:tuluagov/app/modules/solidaridad/widgets/piechart/piechart_widget.dart';

class EstadisticaPage extends StatefulWidget {
  final String title;
  const EstadisticaPage({Key key, this.title = "Estadistica"})
      : super(key: key);

  @override
  _EstadisticaPageState createState() => _EstadisticaPageState();
}

class _EstadisticaPageState extends State<EstadisticaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text(
                'Distribución ayudas',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30,color: Colors.grey[800]),
            ),
          PiechartWidget(),
          Text(
                'Entregas por día',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30,color: Colors.grey[800]),
            ),
          LineschartWidget()
        ],
      ),
    );
  }
}
