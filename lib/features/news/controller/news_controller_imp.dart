import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class NewsControllerImp extends NewsController {
  @override
  Future<void> onInit() async {
    await getData();
    super.onInit();
  }

  @override
  Future<void> getData({bool showLoadingWidget = true}) async {
    try {
      if (showLoadingWidget) {
        showLoading();
      }

      await repository.getData(RequestType.dichvu).then((value) {
        if (value.data.isNotEmpty) {
          listNews.assignAll(value.data);
        }
      });
    } finally {
      hideLoading();
    }
  }

  @override
  Future<void> onLoadMore() async {}

  @override
  Future<void> onRefresh() async {
    try {
      await getData(showLoadingWidget: false);
    } finally {
      refreshController.refreshCompleted();
    }
  }
}
