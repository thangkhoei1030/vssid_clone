import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class HealthRecordControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HealthRecordController>(() => HealthRecordController());
    Get.lazyPut<HealthRecordReleaseDocumentController>(
        () => HealthRecordReleaseDocumentController());
    Get.lazyPut<HealthRecordHistoryTabController>(
        () => HealthRecordHistoryTabController());
  }
}
