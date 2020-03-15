import 'package:cached_network_image/cached_network_image.dart';
import 'package:flukit/flukit.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wanandroid_flutter/base/widget/base_page.dart';

import '../base/bloc/bloc_provider.dart';
import '../common/object_util.dart';
import '../data/home/banner/banner_bloc.dart';
import '../data/home/banner/banner_model.dart';

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

  @override
  Widget build(BuildContext context) {
    BannerBLoC bLoC = BLoCProvider.of(context);
    Observable.just(1).delay(Duration(milliseconds: 100)).listen((_) {
      bLoC.getBanner();
    });
    return new StreamBuilder(
        stream: bLoC.stream,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Text('首页'),
            ),
            body: ListView(
              children: <Widget>[buildBanner(context, snapshot?.data?.data)],
            ),
            floatingActionButton: FloatingActionButton(onPressed: () {
              bLoC.getBanner();
            }),
          );
        });
  }
}
