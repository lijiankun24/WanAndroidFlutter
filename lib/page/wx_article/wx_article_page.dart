import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/base_page.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/wx_article/wx_article_cat_notifier.dart';
import 'package:wanandroid_flutter/data/wx_article/wx_article_cat_model.dart';
import 'package:wanandroid_flutter/data/wx_article/wx_article_list_notifier.dart';
import 'package:wanandroid_flutter/data/wx_article/wx_article_list_model.dart';
import 'package:wanandroid_flutter/widgets/tab_layout.dart';
import 'wx_article_item.dart';

class WxArticlePage extends BasePage {
  @override
  BasePageState createState() {
    return _WxArticleState();
  }
}

class _WxArticleState extends BasePageState<WxArticlePage> {
  List<WxArticleCatModel> wxArticleCatList;

  @override
  Widget build(BuildContext context) {
    _refreshWxArticleCatList(context);
    return Provide<WxArticleCatNotifier>(
      builder: (context, child, snapshot) {
        return DefaultTabController(
          length: snapshot?.response?.data?.length,
          child: Scaffold(
            appBar: AppBar(
              title: TabLayout<WxArticleCatModel>(
                wxArticleCatList,
                (model) {},
              ),
            ),
            body: RefreshIndicator(
              child: ListView(
                children: <Widget>[
                  Provide<WxArticleListNotifier>(
                    builder: (context, child, snapshot) {
                      return buildListItem(snapshot?.response?.data?.datas);
                    },
                  ),
                ],
              ),
              onRefresh: () {
                return _refreshWxArticleList(context);
              },
            ),
          ),
        );
      },
    );
  }

  void _refreshWxArticleCatList(BuildContext context) {
    Provide.value<WxArticleCatNotifier>(context)
        .getWxArticleCat()
        .then((response) {
      wxArticleCatList = response.data;
      if (!ObjectUtil.isEmpty(wxArticleCatList)) {
        _refreshWxArticleList(context, cid: wxArticleCatList[0].id);
      }
    });
  }

  Future<WxArticleListModelResponse> _refreshWxArticleList(BuildContext context,
      {int cid}) {
    return Provide.value<WxArticleListNotifier>(context).getWxArticleList();
  }

  Widget buildListItem(List<WxArticleModel> list) {
    if (ObjectUtil.isEmpty(list)) {
      return Container(height: 0);
    }
    List<Widget> itemList = list.map((model) {
      return WxArticleItem(model);
    }).toList();
    return Column(
      children: itemList,
    );
  }
}
