import 'package:get/get.dart';
import 'package:vssid/features/src_feature.dart';

class BenefitInfomationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BenefitInfomationController>(
        () => BenefitInfomationController());
  }
}
