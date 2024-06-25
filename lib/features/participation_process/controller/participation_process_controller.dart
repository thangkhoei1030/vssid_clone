import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ParticipationProcessController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 5, vsync: this);
}
