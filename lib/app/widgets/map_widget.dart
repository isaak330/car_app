import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late final YandexMapController _mapController;
  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        children: [
          YandexMap(
            onMapCreated: (controller) async {
              _mapController = controller;
              await _mapController.moveCamera(CameraUpdate.newCameraPosition(
                  const CameraPosition(
                      target: Point(
                          latitude: 56.83242225, longitude: 60.652662931125))));
            },
          ),
        ],
      ),
    );
  }
}
