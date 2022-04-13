import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewTab extends StatefulWidget {
  const WebViewTab({Key? key}) : super(key: key);

  @override
  State<WebViewTab> createState() => _WebViewTabState();
}

class _WebViewTabState extends State<WebViewTab> {
  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: "https://google.com",
    );
  }
}
