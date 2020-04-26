import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScaffold extends StatefulWidget {
  final String title;
  final String url;

  WebScaffold({Key key, this.title, this.url}) : super(key: key);

  @override
  State createState() => _WebState();
}

class _WebState extends State<WebScaffold> {
  int _curIndex = 1;

  void loadFinished(String url) {
    setState(() {
      _curIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: IndexedStack(
        index: _curIndex,
        children: <Widget>[
          WebView(
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: this.loadFinished,
          ),
          LoadingView(),
        ],
      ),
    );
  }
}
