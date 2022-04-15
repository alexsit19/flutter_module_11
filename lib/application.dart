import 'package:flutter/material.dart';
import 'package:flutter_module_11/widgets/map_view_tab.dart';
import 'package:flutter_module_11/widgets/video_player_tab.dart';
import 'package:flutter_module_11/widgets/web_view_tab.dart';

class TestViewApp extends StatelessWidget {
  const TestViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.web)),
                Tab(icon: Icon(Icons.map)),
                Tab(icon: Icon(Icons.videocam_outlined)),
              ],
            ),
            title: const Text("Test views in flutter"),
          ),
          body: TabBarView(
            children: [
              WebViewTab(),
              MapViewTab(),
              VideoPlayerTab(),
            ],
          )),
    ));
  }
}
