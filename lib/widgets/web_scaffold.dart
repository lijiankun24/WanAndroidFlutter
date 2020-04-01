import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScaffold extends StatefulWidget {
  final String title;
  final String url;

  WebScaffold({Key key, this.title, this.url}) : super(key: key);

  @override
  State createState() => _WebState();
}

class _WebState extends State<WebScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
