import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class NewsController extends BaseRefreshGetxController {
  late final PublicServiceRepository repository = PublicServiceRepository(this);

  final RxList<PublicServiceResponse> listNews = RxList.empty();

  Future<void> getData({bool showLoadingWidget = true});
}
