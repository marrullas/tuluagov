import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'turismo_controller.dart';

class TurismoPage extends StatefulWidget {
  final String title;
  const TurismoPage({Key key, this.title = "Turismo"}) : super(key: key);

  @override
  _TurismoPageState createState() => _TurismoPageState();
}

class _TurismoPageState extends ModularState<TurismoPage, TurismoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: LatLng(4.0846601, -76.1953583), zoom: 16)));
  }
}
