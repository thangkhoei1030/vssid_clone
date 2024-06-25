import 'package:get/get.dart';
import 'package:vssid/features/src_feature.dart';

class HealthInsuranceCardBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HealthInsuranceCardController>(
        () => HealthInsuranceCardControllerImp());
  }
}
