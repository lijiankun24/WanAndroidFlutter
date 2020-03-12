import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/widget/base_page.dart';
import 'package:flukit/flukit.dart';
import '../data/banner/banner_bloc.dart';
import '../base/bloc/bloc_provider.dart';

class HomePage extends BasePage {
  @override
  BasePageState createState() {
    return _HomeState();
  }
}

class _HomeState extends BasePageState<HomePage> {
  Widget buildBanner() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Swiper(),
    );
  }

  @override
  Widget build(BuildContext context) {
    BannerBLoC bLoC = BLoCProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: ListView(
        children: <Widget>[
          StreamBuilder(
            initialData: bLoC.banner,
            stream: bLoC.stream,
            builder: (context, snapshot) {
              return Text(snapshot?.data?.data[0]?.desc);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        bLoC.getBanner();
      }),
    );
  }
}
