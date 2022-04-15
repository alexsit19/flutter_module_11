import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_module_11/widgets/webview_navigations_controls.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewTab extends StatefulWidget {
  const WebViewTab({Key? key}) : super(key: key);

  @override
  State<WebViewTab> createState() => _WebViewTabState();
}

class _WebViewTabState extends State<WebViewTab> {
  final controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WebView"),
        actions: [
          NavigationControls(controller: controller),
        ],
      ),
      body: WebView(
        initialUrl: "https://google.com",
        onWebViewCreated: (webViewController) {
          controller.complete(webViewController);
        },
      ),
    );
  }
}
