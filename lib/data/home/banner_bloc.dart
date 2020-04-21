import 'package:wanandroid_flutter/base/base_bloc.dart';
import 'dart:async';
import 'package:wanandroid_flutter/data/home/banner_model.dart';
import 'package:wanandroid_flutter/common/application.dart';
import 'package:wanandroid_flutter/data/api.dart';

class BannerBLoC extends BaseBLoC {
  StreamController<BannerResponse> _controller = StreamController.broadcast();
  BannerResponse _bannerResponse;

  BannerResponse get banner => _bannerResponse;

  Stream<BannerResponse> get stream => _controller.stream;

  void getBanner() {
    Application.netManager.get(Api.HOME_BANNER).then((response) {
      _bannerResponse = BannerResponse.fromJson(response.data);
      _controller.add(_bannerResponse);
    });
  }

  @override
  void dispose() {
    _controller.close();
  }
}
