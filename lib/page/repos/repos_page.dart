import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/base_page.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/cat_model.dart';
import 'package:wanandroid_flutter/data/repos/repos_cat_notifier.dart';
import 'package:wanandroid_flutter/data/list_item_model.dart';
import 'package:wanandroid_flutter/data/repos/repos_list_notifier.dart';
import 'package:wanandroid_flutter/widgets/tab_layout.dart';

import 'repos_item.dart';

class ReposPage extends BasePage {
  List<CatModel> reposCatModelList;
  CatModel curReposCat;

  @override
  BasePageState createState() {
    return _ReposState();
  }
}

class _ReposState extends BasePageState<ReposPage> {
  Function _dismissLoadingFun;

  @override
  Widget build(BuildContext context) {
    _refreshCat(context);
    return Provide<ReposCatNotifier>(
      builder: (context, child, notifier) {
        return DefaultTabController(
          length: this.widget.reposCatModelList?.length,
          child: Scaffold(
            appBar: AppBar(
              title: TabLayout<CatModel>(this.widget.reposCatModelList,
                  (reposCat) {
                _showLoading();
                this.widget.curReposCat = reposCat;
                _refreshList(context, cid: reposCat.id);
              }),
            ),
            body: Center(
              child: RefreshIndicator(
                child: ListView(
                  children: <Widget>[
                    Provide<ReposListNotifier>(
                      builder: (context, child, notifier) {
                        if (_dismissLoadingFun != null) {
                          _dismissLoadingFun();
                          _dismissLoadingFun = null;
                        }
                        return buildListItem(notifier?.response?.data?.datas);
                      },
                    ),
                  ],
                ),
                onRefresh: () {
                  return _refreshList(context,
                      cid: this.widget.curReposCat?.id);
                },
              ),
            ),
          ),
        );
      },
    );
  }

  void _refreshCat(BuildContext context) {
    Provide.value<ReposCatNotifier>(context).getReposCat().then((response) {
      this.widget.reposCatModelList = response.data;
      int cid;
      if (!ObjectUtil.isEmpty(this.widget.reposCatModelList)) {
        this.widget.curReposCat = this.widget.reposCatModelList[0];
        cid = this.widget.curReposCat?.id;
      }
      _refreshList(context, cid: cid);
    });
  }

  Future<ListItemModelResponse> _refreshList(BuildContext context, {int cid}) {
    var params = {};
    if (!ObjectUtil.isEmpty(cid)) {
      params.addAll({'cid': cid});
    }
    return Provide.value<ReposListNotifier>(context)
        .getReposList(params: params);
  }

  _showLoading() {
    showDialog(
      context: context,
      builder: (context) {
        return new LoadingDialog(
          dismissLoading: _dismissLoading,
          outsideDismiss: false,
        );
      },
    );
  }

  _dismissLoading(Function dismissLoadingFun) {
    _dismissLoadingFun = dismissLoadingFun;
  }

  Widget buildListItem(List<ListItemModel> list) {
    if (ObjectUtil.isEmpty(list)) {
      return Container(height: 0);
    }
    List<Widget> itemList = list.map((model) {
      return ReposItem(
        reposModel: model,
        valueChanged: (reposModel) {
          NavigatorUtils.pushWeb(context, url: model.link, title: model.title);
        },
      );
    }).toList();
    return Column(
      children: itemList,
    );
  }
}
