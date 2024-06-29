import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseTabController<T, V extends BaseRepository>
    extends BaseRefreshGetxController {
  // late final ParticipationProcessController participationProcessController =
  //     Get.find();
  // Future<void> getData() async {
  //   await participationProcessController.getData();
  // }
  late final V tabRepository;

  BaseTabController();

  final RxList<T> listResponse = RxList.empty();

  final RxList<T> listSearchResponse = RxList.empty();

  Future<void> getData();

  Future<void> initRepository() async {}

  @override
  @mustCallSuper
  Future<void> onInit() async {
    try {
      showLoading();
      await getData();
    } finally {
      hideLoading();
    }
    super.onInit();
  }

  @override
  Future<void> onRefresh() async {
    try {
      await getData();
    } finally {
      refreshController.refreshCompleted();
    }
  }

  @override
  Future<void> onLoadMore() async {}
}
