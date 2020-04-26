import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/bloc_provider.dart';
import 'package:wanandroid_flutter/common/application.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/home/article_list_notifier.dart';
import 'package:wanandroid_flutter/data/home/banner_bloc.dart';
import 'package:wanandroid_flutter/data/home/banner_notifier.dart';
import 'package:wanandroid_flutter/data/list/repos/repos_cat_notifier.dart';
import 'package:wanandroid_flutter/data/list/repos/repos_list_notifier.dart';
import 'package:wanandroid_flutter/data/list/system/system_cat_notifier.dart';
import 'package:wanandroid_flutter/data/list/system/system_list_notifier.dart';
import 'package:wanandroid_flutter/data/list/wx_article/wx_article_cat_notifier.dart';
import 'package:wanandroid_flutter/data/list/wx_article/wx_article_list_notifier.dart';

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
  var reposCatNotifier = new ReposCatNotifier();
  var wxArticleCatNotifier = new WxArticleCatNotifier();
  var wxArticleListNotifier = new WxArticleListNotifier();
  var systemCatNotifier = new SystemCatNotifier();
  var systemListNotifier = new SystemListNotifier();
  var provider = new Providers();
  provider..provide(Provider<BannerNotifier>.value(bannerNotifier));
  provider..provide(Provider<ArticleNotifier>.value(articleListNotifier));
  provider..provide(Provider<ReposListNotifier>.value(reposListNotifier));
  provider..provide(Provider<ReposCatNotifier>.value(reposCatNotifier));
  provider..provide(Provider<WxArticleCatNotifier>.value(wxArticleCatNotifier));
  provider..provide(Provider<SystemCatNotifier>.value(systemCatNotifier));
  provider..provide(Provider<SystemListNotifier>.value(systemListNotifier));
  provider
    ..provide(Provider<WxArticleListNotifier>.value(wxArticleListNotifier));
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
