import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/pages/routes.dart';

class PageBuilderControllerImp extends PageBuilderController {
  @override
  void onInit() async {
    pageController = PageController(initialPage: 0, keepPage: true);
    try {
      showLoadingOverlay();
      await _getMemberInfomation();
    } finally {
      hideLoadingOverlay();
    }
    super.onInit();
  }

  @override
  void onPageChange(int index) {
    currentIndexPage.value = index;
    pageController.jumpToPage(index);
  }

  Future<void> _getMemberInfomation() async {
    await pageBuilderRepository.getMemberInfomation().then((value) {
      if (value.data != null) {
        memberInfomation.value = value.data;
      }
    });
  }

  @override
  void logout() {
    APP_DATA.delete(AppConst.keyUserpassword);
    Get.offAllNamed(AppRoutes.loginPage);
  }
}
