import 'package:mobx/mobx.dart';
part 'hogar_model_controller.g.dart';

class HogarModelController = _HogarModelControllerBase with _$HogarModelController;

abstract class _HogarModelControllerBase with Store {

  @observable
  String nombre;
  @action
  changeNombre(String value) => nombre = value;

  @observable
  String telefono;
  @action
  changeTelefono(String value) => telefono = value;

  @observable
  String direccion;
  @action
  changeDireccion(String value) => direccion = value;

  @observable
  String barrio;
  @action
  changeBarrio(String value) => barrio = value;

  @observable
  String ubicacion;
  @action
  changeUbicacion(String value) => nombre = value;

  @observable
  String imagen;
  @action
  changeImagen(String value) => imagen = value;

  @observable
  int adultos;
  @action
  changeAdultos(int value) => adultos = value;

  @observable
  int mayores60;
  @action
  changeMayores60(int value) => mayores60 = value;

  @observable
  int menores;
  @action
  changeMenores(int value) => menores = value;

  @observable
  String descripcion;
  @action
  changeDescripcion(String value) => descripcion = value;


}