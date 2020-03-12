import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/application.dart';
import 'page/main_page.dart';
import 'base/bloc/bloc_provider.dart';
import 'data/banner/banner_bloc.dart';

void main() {
  Application.globalInit(() {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BLoCProvider<BannerBLoC>(
      bloc: BannerBLoC(),
      child: MaterialApp(
        title: 'WanAndroid-Flutter',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightBlue,
        ),
        home: MainPage(),
      ),
    );
  }
}
