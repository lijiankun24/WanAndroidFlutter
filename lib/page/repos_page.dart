import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/widget/base_page.dart';

class ReposPage extends BasePage {
  @override
  BasePageState createState() {
    return _ReposState();
  }
}

class _ReposState extends BasePageState<ReposPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('项目'),
      ),
    );
  }
}