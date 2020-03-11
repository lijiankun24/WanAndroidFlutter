import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/widget/base_page.dart';

class EventsPage extends BasePage {
  @override
  BasePageState createState() {
    return _EventsState();
  }
}

class _EventsState extends BasePageState<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('动态'),
      ),
    );
  }
}