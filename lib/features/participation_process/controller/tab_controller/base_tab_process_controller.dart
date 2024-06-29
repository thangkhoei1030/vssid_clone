import 'dart:io';

import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class BaseTabProcessController extends BaseTabController<
    ProcessItemResponse, ParticipationProcessRepository> {
  late final ParticipationProcessController participationProcessController =
      Get.find();

  BaseTabProcessController() {
    super.tabRepository = ParticipationProcessRepository(this);
  }
  @override
  Future<void> getData() async {
    await participationProcessController.getData();
  }
}
