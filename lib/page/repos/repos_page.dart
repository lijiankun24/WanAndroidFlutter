import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wanandroid_flutter/base/base_page.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/repos/repos_list_notifier.dart';
import 'package:wanandroid_flutter/data/repos/repos_list_model.dart';
import 'repos_item.dart';

class ReposPage extends BasePage {
  @override
  BasePageState createState() {
    return _ReposState();
  }
}

class _ReposState extends BasePageState<ReposPage> {
  @override
  Widget build(BuildContext context) {
    Observable.just(1).delay(Duration(milliseconds: 100)).listen((_) {
      _refreshData(context);
    });
    return Scaffold(
      body: Center(
        child: RefreshIndicator(
          child: ListView(
            children: <Widget>[
              Provide<ReposListNotifier>(
                builder: (context, child, notifier) {
                  return buildListItem(notifier?.response?.data?.datas);
                },
              ),
            ],
          ),
          onRefresh: () {
            return _refreshData(context);
          },
        ),
      ),
    );
  }

  Future<List<BaseResponse>> _refreshData(BuildContext context) {
    List<Future<BaseResponse>> list = new List();
    list.add(Provide.value<ReposListNotifier>(context).getReposList());
    return Future.wait(list);
  }

  Widget buildListItem(List<ReposModel> list) {
    if (ObjectUtil.isEmpty(list)) {
      return Container(height: 0);
    }
    List<Widget> itemList = list.map((model) {
      return ReposItem(
        reposModel: model,
        valueChanged: (reposModel) {
          /// todo 跳转至详情页
        },
      );
    }).toList();
    return Column(
      children: itemList,
    );
  }
}
