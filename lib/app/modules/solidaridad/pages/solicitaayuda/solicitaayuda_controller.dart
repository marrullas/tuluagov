import 'package:mobx/mobx.dart';
import 'package:tuluagov/app/modules/solidaridad/models/hogar_model_controller.dart';

part 'solicitaayuda_controller.g.dart';

class SolicitaayudaController = _SolicitaayudaControllerBase with _$SolicitaayudaController;

abstract class _SolicitaayudaControllerBase with Store {
  var hogarModel = HogarModelController();
   

  String validateDireccion(){
    if(hogarModel.direccion == null || hogarModel.direccion.isEmpty){
      return "Este campo es obligatorio";
    }else if(hogarModel.direccion.length < 6){
      return "Este campo debe tener minimo 6";
    }
    return null;
  }
  String validateNombre(){
    if(hogarModel.nombre == null || hogarModel.nombre.isEmpty){
      return "Este campo es obligatorio";
    }else if(hogarModel.nombre.length < 12){
      return "Este campo debe tener minimo 12";
    }
    return null;
  }
  String validateTelefono(){
    if(hogarModel.telefono == null || hogarModel.telefono.isEmpty){
      return "Este campo es obligatorio";
    }else if(hogarModel.telefono.length < 9){
      return "Este campo debe tener minimo 9";
    }
    return null;
  }
  String validateDescripcion(){
    if(hogarModel.descripcion == null || hogarModel.descripcion.isEmpty){
      return "Este campo es obligatorio";
    }
    return null;
  }

}
