import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:new_bus_app/core/controllers/mapa_controller.dart';

class MapaWidget extends StatefulWidget {

  MapaWidget();

  @override
  _MapaWidgetState createState() => _MapaWidgetState();
}

class _MapaWidgetState extends State<MapaWidget> {

  Completer<GoogleMapController> _controller = Completer();

  MapaController controller;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-26.2049251,-52.6856833),
    zoom: 20.0,
  );

  /*static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);*/

  @override
  void initState() {
    super.initState();
    controller.buscarpontos();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          markers: controller.markers,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        );
      },
    );
  }
}