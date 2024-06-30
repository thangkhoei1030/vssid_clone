import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';

class ProcessDetailController extends BaseGetxController {
  late final ProcessDetailRepository processDetailRepository =
      ProcessDetailRepository(this);

  final Rx<ProcessDetailResponse?> processDetailResponse = Rxn();

  @override
  void onInit() async {
    await getData();
    super.onInit();
  }

  Future<void> getData() async {
    try {
      showLoading();
      await processDetailRepository
          .getProcessDetail(Get.arguments)
          .then((value) {
        if (value.data != null) {
          processDetailResponse.value = value.data;
        }
      });
    } finally {
      hideLoading();
    }
  }
}
