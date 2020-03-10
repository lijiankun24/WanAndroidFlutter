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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('首页'),
          backgroundColor: Colors.lightBlue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          title: Text('项目'),
          backgroundColor: Colors.lightBlue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          title: Text('动态'),
          backgroundColor: Colors.lightBlue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.system_update),
          title: Text('体系'),
          backgroundColor: Colors.lightBlue,
        ),
      ]),
    );
  }
}
