import 'package:vssid/main.dart';
import 'package:get/get.dart';

extension DeviceRatio on num {
  double get ratioW => this * Get.width / 430;

  double get ratioH => this * Get.height / 932;
}
