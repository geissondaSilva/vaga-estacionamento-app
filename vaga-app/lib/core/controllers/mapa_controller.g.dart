// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapa_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MapaController on _MapaController, Store {
  final _$markersAtom = Atom(name: '_MapaController.markers');

  @override
  Set<Marker> get markers {
    _$markersAtom.context.enforceReadPolicy(_$markersAtom);
    _$markersAtom.reportObserved();
    return super.markers;
  }

  @override
  set markers(Set<Marker> value) {
    _$markersAtom.context.conditionallyRunInAction(() {
      super.markers = value;
      _$markersAtom.reportChanged();
    }, _$markersAtom, name: '${_$markersAtom.name}_set');
  }

  final _$_MapaControllerActionController =
      ActionController(name: '_MapaController');

  @override
  void buscarpontos() {
    final _$actionInfo = _$_MapaControllerActionController.startAction();
    try {
      return super.buscarpontos();
    } finally {
      _$_MapaControllerActionController.endAction(_$actionInfo);
    }
  }
}
