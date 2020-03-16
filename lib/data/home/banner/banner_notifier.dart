import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/home/banner/banner_model.dart';

class BannerNotifier with ChangeNotifier {
  BannerResponse _response;

  BannerResponse get response => _response;

  void getBanner() {
    Application.netManager.get(Api.HOME_BANNER).then((response) {
      _response = BannerResponse.fromJson(response.data);
      notifyListeners();
    });
  }
}
