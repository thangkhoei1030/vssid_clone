import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ParticipationProcessController extends BaseRefreshGetxController
    with GetSingleTickerProviderStateMixin {
  late final ParticipationProcessRepository participationProcessRepository =
      ParticipationProcessRepository(this);

  late final TabController tabController =
      TabController(length: 5, vsync: this);

  final RxList<ProcessItemResponse> listProcess = RxList.empty();

  final RxInt currentIndexTab = 0.obs;

  @override
  void onInit() async {
    try {
      showLoading();
      await getData();
    } finally {
      hideLoading();
    }
    super.onInit();
  }

  Future<void> getData() async {
    await participationProcessRepository.getProcessList().then((value) {
      if (value.data.isNotEmpty) {
        listProcess.assignAll(value.data);
      }
    });
  }

  @override
  Future<void> onLoadMore() async {}

  @override
  Future<void> onRefresh() async {
    try {
      await getData();
    } finally {
      refreshController.refreshCompleted();
    }
  }
}
