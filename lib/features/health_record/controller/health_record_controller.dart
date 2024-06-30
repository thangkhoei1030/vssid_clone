import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class HealthRecordController extends BaseGetxController
    with GetSingleTickerProviderStateMixin {
  late final HealthRecordRepository healthRecordRepository =
      HealthRecordRepository(this);

  late final TabController tabController =
      TabController(vsync: this, length: 2);

  final RxList<HealthRecordItem> listRecord = RxList.empty();

  final PageBuilderController pageBuilderController = Get.find();
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
    await healthRecordRepository.getListRecord().then((value) {
      if (value.data.isNotEmpty) {
        listRecord.assignAll(value.data);
      }
    });
  }
}
