import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/base_page.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/list/system/system_list_notifier.dart';
import 'package:wanandroid_flutter/page/system/system_list_item.dart';
import 'package:wanandroid_flutter/widgets/tab_layout.dart';

class SystemListPage extends BasePage {
  final CatModel catParentModel;
  final List<CatModel> catChildList;

  SystemListPage({Key key, @required this.catParentModel})
      : catChildList = catParentModel.children,
        super(key: key);

  @override
  BasePageState createState() => _SystemListState();
}

class _SystemListState extends BasePageState<SystemListPage> {
  Function _dismissLoadingFun;
  CatModel _curReposCat;

  @override
  void initState() {
    _curReposCat = widget.catChildList[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _refreshList(context, _curReposCat.id);
    return DefaultTabController(
      length: widget.catChildList?.length,
      child: Scaffold(
        appBar: AppBar(
          title: TabLayout<CatModel>(widget.catChildList, (catModel) {
            _curReposCat = catModel;
            _showLoading();
            _refreshList(context, _curReposCat.id);
          }),
        ),
        body: Center(
          child: RefreshIndicator(
            child: ListView(
              children: <Widget>[
                Provide<SystemListNotifier>(
                  builder: (context, child, snapshot) {
                    if (_dismissLoadingFun != null) {
                      _dismissLoadingFun();
                      _dismissLoadingFun = null;
                    }
                    return buildListItem(
                      context,
                      snapshot?.response?.data?.datas,
                    );
                  },
                ),
              ],
            ),
            onRefresh: () {
              return _refreshList(context, _curReposCat.id);
            },
          ),
        ),
      ),
    );
  }

  Future<ListItemModelResponse> _refreshList(BuildContext context, int id) {
    return Provide.value<SystemListNotifier>(context).getSystemList(id);
  }

  Widget buildListItem(BuildContext context, List<ListItemModel> modelList) {
    if (ObjectUtil.isEmpty(modelList)) {
      return Container(height: 0);
    }
    List<Widget> children = modelList.map<Widget>((model) {
      return SystemListItem(
        itemModel: model,
        parentCatName: widget.catParentModel.name,
        catName: _curReposCat.name,
        valueChanged: (data) {
          NavigatorUtils.pushWeb(
            context,
            url: data.link,
            title: data.title,
          );
        },
      );
    }).toList();
    return Column(
      children: children,
    );
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
}
