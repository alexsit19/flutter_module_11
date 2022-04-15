import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_module_11/widgets/mapview_navigations_controls.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapViewTab extends StatefulWidget {
  const MapViewTab({Key? key}) : super(key: key);

  @override
  State<MapViewTab> createState() => _MapViewTabState();
}

class _MapViewTabState extends State<MapViewTab> {
  Completer<YandexMapController> completer = Completer();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      YandexMap(
        onMapCreated: (yandexMapController) {
          completer.complete(yandexMapController);
        },
      ),
      Align(
          alignment: Alignment.centerRight,
          child: MapViewControls(controller: completer)),
    ]);
  }
}
