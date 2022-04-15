import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapViewControls extends StatelessWidget {
  MapViewControls({required this.controller, Key? key}) : super(key: key);

  final Completer<YandexMapController> controller;
  YandexMapController? yandexController;
  final animation =
      const MapAnimation(type: MapAnimationType.smooth, duration: 1.5);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<YandexMapController>(
      future: controller.future,
      builder: (context, snapshot) {
        yandexController = snapshot.data;

        return Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: FloatingActionButton(
                    child: const Icon(Icons.add), onPressed: zoomIn),
              ),
              FloatingActionButton(
                  child: const Icon(Icons.remove), onPressed: zoomOut)
            ],
          ),
        );
      },
    );
  }

  void zoomIn() {
    yandexController?.moveCamera(CameraUpdate.zoomIn(), animation: animation);
  }

  void zoomOut() {
    yandexController?.moveCamera(CameraUpdate.zoomOut(), animation: animation);
  }
}
