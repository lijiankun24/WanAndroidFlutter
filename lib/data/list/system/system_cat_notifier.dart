import 'package:wanandroid_flutter/common/common_import.dart';

class SystemCatNotifier with ChangeNotifier {
  CatModelResponse _response;

  CatModelResponse get response => _response;

  Future<CatModelResponse> getSystemCat() {
    return Application.netManager
        .get(Api.SYSTEM_CAT)
        .then<CatModelResponse>((_res) {
      _response = CatModelResponse.fromJson(_res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
