import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/bloc_provider.dart';
import 'package:wanandroid_flutter/common/application.dart';
import 'package:wanandroid_flutter/common/common_import.dart';

import 'data/home/article_list/article_list_notifier.dart';
import 'data/home/banner/banner_bloc.dart';
import 'data/home/banner/banner_notifier.dart';
import 'data/repos/repos_list_notifier.dart';
import 'page/main_page.dart';

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
  var articleListNotifier = new ArticleNotifier();
  var reposListNotifier = new ReposListNotifier();
  var provider = new Providers();
  provider..provide(Provider<BannerNotifier>.value(bannerNotifier));
  provider..provide(Provider<ArticleNotifier>.value(articleListNotifier));
  provider..provide(Provider<ReposListNotifier>.value(reposListNotifier));
  runApp(ProviderNode(child: ProviderApp(), providers: provider));
}

class ProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wanandroid_flutter',
      home: MainPage(),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.lightBlue,
        accentColor: Colors.lightBlue,
        indicatorColor: Colors.white,
      ),
    );
  }
}
