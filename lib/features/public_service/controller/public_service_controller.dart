import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class PublicServiceController extends BaseGetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 2, vsync: this);

  final RxInt currentTabIndex = 0.obs;

  void onTabChange(int index) {
    currentTabIndex.value = index;
    tabController.animateTo(index);
  }
}
