import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/base_page.dart';
import 'events_page.dart';
import 'package:wanandroid_flutter/page/home/home_page.dart';
import 'package:wanandroid_flutter/page/repos/repos_page.dart';
import 'system_page.dart';

class MainPage extends BasePage {
  @override
  BasePageState createState() {
    return _MainState();
  }
}

class _MainState extends BasePageState<MainPage> {
  var _selectedIndex = 0;
  var _pages = <Widget>[
    HomePage(),
    ReposPage(),
    EventsPage(),
    SystemPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _pages,
        index: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
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
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          changePage(index);
        },
      ),
    );
  }

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
