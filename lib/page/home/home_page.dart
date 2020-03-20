import 'package:cached_network_image/cached_network_image.dart';
import 'package:flukit/flukit.dart';
import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wanandroid_flutter/base/widget/base_page.dart';
import 'package:wanandroid_flutter/data/home/banner/banner_notifier.dart';

import 'package:wanandroid_flutter/common/object_util.dart';
import 'package:wanandroid_flutter/data/home/banner/banner_model.dart';
import 'package:wanandroid_flutter/data/home/article_list/article_list_notifier.dart';
import 'package:wanandroid_flutter/data/home/article_list/article_list_model.dart';
import 'package:wanandroid_flutter/page/home/article_item.dart';

class HomePage extends BasePage {
  @override
  BasePageState createState() {
    return _HomeState();
  }
}

class _HomeState extends BasePageState<HomePage> {
  Widget buildBanner(BuildContext context, List<BannerModel> list) {
    if (ObjectUtil.isEmpty(list)) {
      return Container(height: 0.0);
    }
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Swiper(
        children: list.map((banner) {
          return new CachedNetworkImage(imageUrl: banner.imagePath);
        }).toList(),
      ),
    );
  }

  Widget buildListItem(List<ArticleModel> list) {
    if (ObjectUtil.isEmpty(list)) {
      return Container(height: 0.0);
    }
    List<Widget> listItem = list.map((articleModel) {
      return ArticleItem(articleModel);
    }).toList();
    return Column(children: listItem);
  }

  @override
  Widget build(BuildContext context) {
    Observable.just(1).delay(Duration(milliseconds: 100)).listen((_) {
      Provide.value<BannerNotifier>(context).getBanner();
      Provide.value<ArticleNotifier>(context).getArticleList();
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: ListView(
        children: <Widget>[
          Provide<BannerNotifier>(
            builder: (context, child, bannerNotifier) {
              return buildBanner(context, bannerNotifier?.response?.data);
            },
          ),
          Provide<ArticleNotifier>(
            builder: (context, child, articleNotifier) {
              return buildListItem(articleNotifier?.response?.data?.datas);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Provide.value<BannerNotifier>(context).getBanner();
        Provide.value<ArticleNotifier>(context).getArticleList();
      }),
    );
  }
}
