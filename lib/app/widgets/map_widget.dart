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
     height: double.infinity,
     width: double.infinity, 
     child: YandexMap(
      onMapCreated: (controller) async{
        _mapController = controller;
        await _mapController.moveCamera(
          CameraUpdate.newCameraPosition(
            const CameraPosition(
              target: Point(
                latitude: 50, 
                longitude: 20))
          )
        );
      },
     ),
    );
  }
}