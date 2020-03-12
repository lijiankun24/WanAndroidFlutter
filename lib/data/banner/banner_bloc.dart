import 'package:wanandroid_flutter/base/bloc/base_bloc.dart';
import 'dart:async';
import 'banner_model.dart';
import 'package:wanandroid_flutter/common/application.dart';
import '../api.dart';

class BannerBLoC extends BaseBLoC {
  StreamController<BannerResponse> _streamController =
      StreamController<BannerResponse>.broadcast();
  BannerResponse _bannerResponse;

  BannerResponse get banner => _bannerResponse;

  Stream<BannerResponse> get stream => _streamController.stream;

  void getBanner() {
    Application.netManager.get(Api.HOME_BANNER).then((response) {
      _bannerResponse = BannerResponse.fromJson(response.data);
      _streamController.add(_bannerResponse);
    });
  }

  @override
  void dispose() {
    _streamController.close();
  }
}
