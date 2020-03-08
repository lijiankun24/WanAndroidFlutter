import '../data/net_manager.dart';
import '../data/api.dart';

import 'package:flutter/widgets.dart';

class Application {
  static NetManager netManager;

  static Future globalInit(VoidCallback callback) async {
    netManager = NetManager(Api.BASE_URL);
    callback();
  }
}
