import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/home/banner/banner_model.dart';

class BannerNotifier with ChangeNotifier {
  BannerResponse _response;

  BannerResponse get response => _response;

  Future<BannerResponse> getBanner() {
    return Application.netManager
        .get(Api.HOME_BANNER)
        .then<BannerResponse>((res) {
      _response = BannerResponse.fromJson(res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
