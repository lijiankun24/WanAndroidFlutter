import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/application.dart';
import 'page/main_page.dart';
import 'base/bloc/bloc_provider.dart';
import 'data/home/banner/banner_bloc.dart';
import 'data/home/banner/banner_notifier.dart';
import 'package:wanandroid_flutter/common/common_import.dart';

void main() {
  Application.globalInit(() {
//    runApp(MyApp());
    testProvider();
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

void testProvider() {
  var bannerNotifier = new BannerNotifier();
  var provider = new Providers();
  provider..provide(Provider<BannerNotifier>.value(bannerNotifier));
  runApp(ProviderNode(child: ProviderApp(), providers: provider));
}

class ProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wanandroid_flutter',
      home: MainPage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue,
      ),
    );
  }
}
