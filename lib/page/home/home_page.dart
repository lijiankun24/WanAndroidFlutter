import 'package:cached_network_image/cached_network_image.dart';
import 'package:flukit/flukit.dart';
import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wanandroid_flutter/base/base_page.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/home/article_list_notifier.dart';
import 'package:wanandroid_flutter/data/home/banner_model.dart';
import 'package:wanandroid_flutter/data/home/banner_notifier.dart';
import 'package:wanandroid_flutter/data/list/list_item_model.dart';
import 'package:wanandroid_flutter/page/home/article_item.dart';
import 'package:wanandroid_flutter/utils/object_utils.dart';

import 'banner_indicator.dart';

class HomePage extends BasePage {
  @override
  BasePageState createState() {
    return _HomeState();
  }
}

class _HomeState extends BasePageState<HomePage> {
  @override
  Widget build(BuildContext context) {
    Observable.just(1).delay(Duration(milliseconds: 100)).listen((_) {
      _refreshData(context);
    });
    return Scaffold(
      body: RefreshIndicator(
        child: ListView(
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
        onRefresh: () {
          return _refreshData(context);
        },
      ),
    );
  }

  Future<List<BaseResponse>> _refreshData(BuildContext context) {
    List<Future<BaseResponse>> list = new List();
    list.add(Provide.value<BannerNotifier>(context).getBanner());
    list.add(Provide.value<ArticleNotifier>(context).getArticleList());
    return Future.wait(list);
  }

  Widget buildBanner(BuildContext context, List<BannerModel> list) {
    if (ObjectUtil.isEmpty(list)) {
      return Container(height: 0.0);
    }
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Swiper(
        circular: true,
        interval: const Duration(seconds: 5),
        indicator: BannerIndicator(),
        indicatorAlignment: AlignmentDirectional.bottomEnd,
        children: list.map((banner) {
          return InkWell(
            child: new CachedNetworkImage(imageUrl: banner.imagePath),
            onTap: () {
              NavigatorUtils.pushWeb(
                context,
                url: banner.url,
                title: banner.title,
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget buildListItem(List<ListItemModel> list) {
    if (ObjectUtil.isEmpty(list)) {
      return Container(height: 0.0);
    }
    List<Widget> listItem = list.map((articleModel) {
      return ArticleItem(
        articleModel: articleModel,
        valueChanged: (article) {
          NavigatorUtils.pushWeb(
            context,
            url: article.link,
            title: article.title,
          );
        },
      );
    }).toList();
    return Column(children: listItem);
  }
}
