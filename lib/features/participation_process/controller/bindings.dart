import 'package:get/get.dart';
import 'package:vssid/features/src_feature.dart';

class ParticipationProcessBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ParticipationProcessController>(
        () => ParticipationProcessController());
    Get.lazyPut<BHXHController>(() => BHXHController());
    Get.lazyPut<BHTNController>(() => BHTNController());
    Get.lazyPut<BHTNLDController>(() => BHTNLDController());
    Get.lazyPut<BHYTController>(() => BHYTController());
  }
}
