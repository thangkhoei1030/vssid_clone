import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class LookUpOnlineBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LookUpBHXHController>(() => LookUpBHXHController());
    Get.lazyPut<LookUpCSKCBBHYTController>(() => LookUpCSKCBBHYTController());
    Get.lazyPut<LookUpCskcbQuitJobController>(
        () => LookUpCskcbQuitJobController());
    Get.lazyPut<LookUpOrganBHXHController>(() => LookUpOrganBHXHController());

    Get.lazyPut<LookUpOrganJoinController>(() => LookUpOrganJoinController());
    Get.lazyPut<LookUpReceiveBHXHBHYTController>(
        () => LookUpReceiveBHXHBHYTController());
  }
}
