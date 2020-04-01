import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/widgets/web_scaffold.dart';

class NavigatorUtils {
  static void pushWeb(
    BuildContext context, {
    String url,
    String title,
  }) {
    if (context == null || ObjectUtil.isEmpty(url)) {
      return;
    }
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) {
          return WebScaffold(
            url: url,
            title: title,
          );
        },
      ),
    );
  }
}
