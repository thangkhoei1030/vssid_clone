import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class PageBuilderController extends BaseGetxController {
  late final PageController pageController;

  RxInt currentIndexPage = 0.obs;

  void onPageChange(int index);

  String get titleAppBar {
    switch (currentIndexPage.value) {
      case 0:
        return PageBuilderString.profileManager;
      case 1:
        return PageBuilderString.publicService;
      case 2:
        return PageBuilderString.lookUpOnline;
      case 3:
        return PageBuilderString.support;
      default:
        return "";
    }
  }
}
