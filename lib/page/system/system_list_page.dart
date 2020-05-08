import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/base_page.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/widgets/tab_layout.dart';

class SystemListPage extends BasePage {
  final List<CatModel> catList;

  SystemListPage({Key key, @required this.catList}) : super(key: key);

  @override
  BasePageState createState() => _SystemListState();
}

class _SystemListState extends BasePageState<SystemListPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.catList?.length,
      child: Scaffold(
        appBar: AppBar(
          title: TabLayout<CatModel>(widget.catList, (catModel) {}),
        ),
        body: Center(
          child: RefreshIndicator(
            child: ListView(),
            onRefresh: null,
          ),
        ),
      ),
    );
  }
}
