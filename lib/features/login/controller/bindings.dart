import 'package:get/get.dart';
import 'package:vssid/features/src_feature.dart';

class LoginControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginControllerImp());
  }
}
