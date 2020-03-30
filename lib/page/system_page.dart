import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/base_page.dart';

class SystemPage extends BasePage {
  @override
  BasePageState createState() {
    return _SystemState();
  }
}

class _SystemState extends BasePageState<SystemPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('体系'),
      ),
    );
  }
}
