import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/application.dart';
import 'page/home_page.dart';

void main() {
  Application.globalInit(() {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WanAndroid-Flutter',
      home: HomePage(),
    );
  }
}
