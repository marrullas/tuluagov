import 'package:flutter/material.dart';

class SolicitaayudaPage extends StatefulWidget {
  final String title;
  const SolicitaayudaPage({Key key, this.title = "Solicitaayuda"})
      : super(key: key);

  @override
  _SolicitaayudaPageState createState() => _SolicitaayudaPageState();
}

class _SolicitaayudaPageState extends State<SolicitaayudaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
