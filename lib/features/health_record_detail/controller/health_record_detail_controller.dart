import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';

class HealthRecordDetailController extends BaseGetxController {
  late final HealthRecordDetailRepository healthRecordDetailRepository =
      HealthRecordDetailRepository(this);

  final Rx<HealthRecordDetailResponse?> heathRecordDetail = Rxn();

  @override
  Future<void> onInit() async {
    try {
      showLoading();
      await getData();
    } finally {
      hideLoading();
    }
    super.onInit();
  }

  Future<void> getData() async {
    await healthRecordDetailRepository
        .getRecordDetail(Get.arguments)
        .then((value) {
      if (value.data != null) {
        heathRecordDetail.value = value.data;
      }
    });
  }
}
