import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tuluagov/app/modules/solidaridad/pages/solicitaayuda/solicitaayuda_controller.dart';

class SolicitaayudaPage extends StatefulWidget {
  final String title;
  const SolicitaayudaPage({Key key, this.title = "Solicita Ayuda"}) : super(key: key);

  @override
  _SolicitaayudaPageState createState() => _SolicitaayudaPageState();
}

class _SolicitaayudaPageState extends State<SolicitaayudaPage> {
  final controller = SolicitaayudaController();

  _textField({String labelText, onChanged, String Function() errorText, int maxLines=0}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
      maxLines: maxLines,
    );
  }

  @override
  Widget build(BuildContext context) {
    const spacing = 12.0;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              'Detalles de la solicitud',
              style: TextStyle(fontSize: 24),
            ),
            Divider(),
            SizedBox(height: spacing),
            Observer(builder: (_) {
              return _textField(
                errorText: controller.validateDireccion,
                labelText: 'Dirección',
                onChanged: controller.hogarModel.changeDireccion,
              );
            }),
            SizedBox(height: spacing),
            TextFormField(
              decoration: InputDecoration(labelText: 'Barrio', border: OutlineInputBorder()),
            ),
            SizedBox(height: spacing),
            Text('Selección ubicación exacta:'),
            Container(
              width: 30,
              height: 30,
              color: Colors.grey,
              child: Icon(Icons.location_on),
            ),
            SizedBox(height: spacing),
            Text('Foto de vivienda:'),
            Container(
              width: 30,
              height: 30,
              color: Colors.grey,
              child: Icon(Icons.camera_alt),
            ),
            SizedBox(height: spacing),
            _textField(
              errorText: controller.validateDireccion,
              onChanged: controller.hogarModel.changeNombre,
              labelText: 'Nombre jefe del hogar',
            ),
            SizedBox(height: spacing),
            _textField(
              errorText: controller.validateTelefono,
              onChanged: controller.hogarModel.changeTelefono,
              labelText: 'Telefono de contacto',
            ),
            SizedBox(height: spacing),
            TextFormField(
              decoration: InputDecoration(labelText: 'Numero menores de 18', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
            ),
            SizedBox(height: spacing),
            TextFormField(
              decoration: InputDecoration(labelText: 'Numero mayores de 60', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
            ),
            SizedBox(height: spacing),
            TextFormField(
              decoration: InputDecoration(labelText: 'Numero Adultos', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
            ),
            SizedBox(height: spacing),
            _textField(
              errorText: controller.validateDireccion,
              onChanged: controller.hogarModel.changeDescripcion,
              labelText: 'Descripción de la ayuda',
              maxLines: 4
            ),
            
            SizedBox(height: spacing),
          ],
        ),
      ),
    );
  }
}
