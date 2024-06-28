import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class LookUpOnlineController extends BaseGetxController {
  late final LookUpOnlineRepository lookUpOnlineRepository =
      LookUpOnlineRepository(this);
  final List tinhThanh = [];

  final List quanHuyen = [];

  void getTinhThanh(){}

  void getQuanHuyen(){}
  
}
