import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class HealthRecordTabController
    extends BaseTabController<HealthRecordItem, HealthRecordRepository> {
  final HealthRecordController healthRecordController = Get.find();

  Rx<int> yearSelected = (DateTime.now().year).obs;

  HealthRecordTabController() {
    super.tabRepository = HealthRecordRepository(this);
  }

  @override
  Future<void> onInit() async {
    healthRecordController.listRecord.listen((data) {
      listResponse.assignAll(healthRecordController.listRecord);
    });
    await super.onInit();
  }

  @override
  Future<void> getData() async {
    await healthRecordController.getData();
  }
}
