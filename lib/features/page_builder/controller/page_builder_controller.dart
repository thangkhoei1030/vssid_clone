import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class PageBuilderController extends BaseGetxController {
  late final PageController pageController;

  late final PageBuilderRepository pageBuilderRepository =
      PageBuilderRepository(this);

  final Rx<MemberInfomation?> memberInfomation = Rxn();

  final PersistentTabController persistentTabController =
      PersistentTabController(initialIndex: 0);

  final RxInt currentIndexPage = 0.obs;

  void onPageChange(int index);

  void logout();

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
