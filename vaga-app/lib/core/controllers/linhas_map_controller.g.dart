// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linhas_map_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LinhasMapController on _LinhasMapControllerBase, Store {
  final _$openedListAtom = Atom(name: '_LinhasMapControllerBase.openedList');

  @override
  bool get openedList {
    _$openedListAtom.context.enforceReadPolicy(_$openedListAtom);
    _$openedListAtom.reportObserved();
    return super.openedList;
  }

  @override
  set openedList(bool value) {
    _$openedListAtom.context.conditionallyRunInAction(() {
      super.openedList = value;
      _$openedListAtom.reportChanged();
    }, _$openedListAtom, name: '${_$openedListAtom.name}_set');
  }

  final _$_LinhasMapControllerBaseActionController =
      ActionController(name: '_LinhasMapControllerBase');

  @override
  void toggList() {
    final _$actionInfo =
        _$_LinhasMapControllerBaseActionController.startAction();
    try {
      return super.toggList();
    } finally {
      _$_LinhasMapControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
