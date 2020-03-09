import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/widget/base_page.dart';

class HomePage extends BasePage {
  @override
  BasePageState createState() {
    return _HomeState();
  }
}

class _HomeState extends BasePageState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wanandroid_flutter AppBar'),
      ),
      body: Center(
        child: Text('wanandroid_flutter Body'),
      ),
    );
  }
}
