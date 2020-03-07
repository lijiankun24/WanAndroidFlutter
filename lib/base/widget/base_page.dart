import 'package:flutter/material.dart';

/// 页面 Page 的基类
abstract class BasePage extends StatefulWidget {
  @override
  BasePageState createState();
}

abstract class BasePageState<T extends BasePage> extends State<T> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getAppBar();

  Widget getBody();

  @override
  void dispose() {
    super.dispose();
  }
}
