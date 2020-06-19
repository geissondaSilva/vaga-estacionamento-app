import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

part 'mapa_controller.g.dart';

/**
 * code generate controllers:
 *  flutter packages pub run build_runner build
 */

class MapaController = _MapaController with _$MapaController;

abstract class _MapaController with Store {

  @observable
  Set<Marker> markers = Set();

  @action
  void buscarpontos() {
    markers.add(Marker(
      position: LatLng(-26.2039783,-52.6842184),
      markerId: MarkerId('123'),
      onTap: clickMarker
    ));
  }

  void clickMarker() {
    print('cliked');
  }
  
}