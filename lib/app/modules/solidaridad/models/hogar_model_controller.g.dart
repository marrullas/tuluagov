// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hogar_model_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HogarModelController on _HogarModelControllerBase, Store {
  final _$nombreAtom = Atom(name: '_HogarModelControllerBase.nombre');

  @override
  String get nombre {
    _$nombreAtom.context.enforceReadPolicy(_$nombreAtom);
    _$nombreAtom.reportObserved();
    return super.nombre;
  }

  @override
  set nombre(String value) {
    _$nombreAtom.context.conditionallyRunInAction(() {
      super.nombre = value;
      _$nombreAtom.reportChanged();
    }, _$nombreAtom, name: '${_$nombreAtom.name}_set');
  }

  final _$telefonoAtom = Atom(name: '_HogarModelControllerBase.telefono');

  @override
  String get telefono {
    _$telefonoAtom.context.enforceReadPolicy(_$telefonoAtom);
    _$telefonoAtom.reportObserved();
    return super.telefono;
  }

  @override
  set telefono(String value) {
    _$telefonoAtom.context.conditionallyRunInAction(() {
      super.telefono = value;
      _$telefonoAtom.reportChanged();
    }, _$telefonoAtom, name: '${_$telefonoAtom.name}_set');
  }

  final _$direccionAtom = Atom(name: '_HogarModelControllerBase.direccion');

  @override
  String get direccion {
    _$direccionAtom.context.enforceReadPolicy(_$direccionAtom);
    _$direccionAtom.reportObserved();
    return super.direccion;
  }

  @override
  set direccion(String value) {
    _$direccionAtom.context.conditionallyRunInAction(() {
      super.direccion = value;
      _$direccionAtom.reportChanged();
    }, _$direccionAtom, name: '${_$direccionAtom.name}_set');
  }

  final _$barrioAtom = Atom(name: '_HogarModelControllerBase.barrio');

  @override
  String get barrio {
    _$barrioAtom.context.enforceReadPolicy(_$barrioAtom);
    _$barrioAtom.reportObserved();
    return super.barrio;
  }

  @override
  set barrio(String value) {
    _$barrioAtom.context.conditionallyRunInAction(() {
      super.barrio = value;
      _$barrioAtom.reportChanged();
    }, _$barrioAtom, name: '${_$barrioAtom.name}_set');
  }

  final _$ubicacionAtom = Atom(name: '_HogarModelControllerBase.ubicacion');

  @override
  String get ubicacion {
    _$ubicacionAtom.context.enforceReadPolicy(_$ubicacionAtom);
    _$ubicacionAtom.reportObserved();
    return super.ubicacion;
  }

  @override
  set ubicacion(String value) {
    _$ubicacionAtom.context.conditionallyRunInAction(() {
      super.ubicacion = value;
      _$ubicacionAtom.reportChanged();
    }, _$ubicacionAtom, name: '${_$ubicacionAtom.name}_set');
  }

  final _$imagenAtom = Atom(name: '_HogarModelControllerBase.imagen');

  @override
  String get imagen {
    _$imagenAtom.context.enforceReadPolicy(_$imagenAtom);
    _$imagenAtom.reportObserved();
    return super.imagen;
  }

  @override
  set imagen(String value) {
    _$imagenAtom.context.conditionallyRunInAction(() {
      super.imagen = value;
      _$imagenAtom.reportChanged();
    }, _$imagenAtom, name: '${_$imagenAtom.name}_set');
  }

  final _$adultosAtom = Atom(name: '_HogarModelControllerBase.adultos');

  @override
  int get adultos {
    _$adultosAtom.context.enforceReadPolicy(_$adultosAtom);
    _$adultosAtom.reportObserved();
    return super.adultos;
  }

  @override
  set adultos(int value) {
    _$adultosAtom.context.conditionallyRunInAction(() {
      super.adultos = value;
      _$adultosAtom.reportChanged();
    }, _$adultosAtom, name: '${_$adultosAtom.name}_set');
  }

  final _$mayores60Atom = Atom(name: '_HogarModelControllerBase.mayores60');

  @override
  int get mayores60 {
    _$mayores60Atom.context.enforceReadPolicy(_$mayores60Atom);
    _$mayores60Atom.reportObserved();
    return super.mayores60;
  }

  @override
  set mayores60(int value) {
    _$mayores60Atom.context.conditionallyRunInAction(() {
      super.mayores60 = value;
      _$mayores60Atom.reportChanged();
    }, _$mayores60Atom, name: '${_$mayores60Atom.name}_set');
  }

  final _$menoresAtom = Atom(name: '_HogarModelControllerBase.menores');

  @override
  int get menores {
    _$menoresAtom.context.enforceReadPolicy(_$menoresAtom);
    _$menoresAtom.reportObserved();
    return super.menores;
  }

  @override
  set menores(int value) {
    _$menoresAtom.context.conditionallyRunInAction(() {
      super.menores = value;
      _$menoresAtom.reportChanged();
    }, _$menoresAtom, name: '${_$menoresAtom.name}_set');
  }

  final _$descripcionAtom = Atom(name: '_HogarModelControllerBase.descripcion');

  @override
  String get descripcion {
    _$descripcionAtom.context.enforceReadPolicy(_$descripcionAtom);
    _$descripcionAtom.reportObserved();
    return super.descripcion;
  }

  @override
  set descripcion(String value) {
    _$descripcionAtom.context.conditionallyRunInAction(() {
      super.descripcion = value;
      _$descripcionAtom.reportChanged();
    }, _$descripcionAtom, name: '${_$descripcionAtom.name}_set');
  }

  final _$_HogarModelControllerBaseActionController =
      ActionController(name: '_HogarModelControllerBase');

  @override
  dynamic changeNombre(String value) {
    final _$actionInfo =
        _$_HogarModelControllerBaseActionController.startAction();
    try {
      return super.changeNombre(value);
    } finally {
      _$_HogarModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeTelefono(String value) {
    final _$actionInfo =
        _$_HogarModelControllerBaseActionController.startAction();
    try {
      return super.changeTelefono(value);
    } finally {
      _$_HogarModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDireccion(String value) {
    final _$actionInfo =
        _$_HogarModelControllerBaseActionController.startAction();
    try {
      return super.changeDireccion(value);
    } finally {
      _$_HogarModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeBarrio(String value) {
    final _$actionInfo =
        _$_HogarModelControllerBaseActionController.startAction();
    try {
      return super.changeBarrio(value);
    } finally {
      _$_HogarModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeUbicacion(String value) {
    final _$actionInfo =
        _$_HogarModelControllerBaseActionController.startAction();
    try {
      return super.changeUbicacion(value);
    } finally {
      _$_HogarModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeImagen(String value) {
    final _$actionInfo =
        _$_HogarModelControllerBaseActionController.startAction();
    try {
      return super.changeImagen(value);
    } finally {
      _$_HogarModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeAdultos(int value) {
    final _$actionInfo =
        _$_HogarModelControllerBaseActionController.startAction();
    try {
      return super.changeAdultos(value);
    } finally {
      _$_HogarModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeMayores60(int value) {
    final _$actionInfo =
        _$_HogarModelControllerBaseActionController.startAction();
    try {
      return super.changeMayores60(value);
    } finally {
      _$_HogarModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeMenores(int value) {
    final _$actionInfo =
        _$_HogarModelControllerBaseActionController.startAction();
    try {
      return super.changeMenores(value);
    } finally {
      _$_HogarModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDescripcion(String value) {
    final _$actionInfo =
        _$_HogarModelControllerBaseActionController.startAction();
    try {
      return super.changeDescripcion(value);
    } finally {
      _$_HogarModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'nombre: ${nombre.toString()},telefono: ${telefono.toString()},direccion: ${direccion.toString()},barrio: ${barrio.toString()},ubicacion: ${ubicacion.toString()},imagen: ${imagen.toString()},adultos: ${adultos.toString()},mayores60: ${mayores60.toString()},menores: ${menores.toString()},descripcion: ${descripcion.toString()}';
    return '{$string}';
  }
}
