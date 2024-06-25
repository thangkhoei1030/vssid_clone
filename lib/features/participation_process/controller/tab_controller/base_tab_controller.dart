import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseTabController<T> extends BaseRefreshGetxController {
  late final ParticipationProcessRepository participationProcessRepository;

  final RxList<T> listResponse = RxList.empty();

  final RxList<T> listSearchResponse = RxList.empty();

  Future<void> getData();

  @override
  @mustCallSuper
  void onInit() async {
    participationProcessRepository = ParticipationProcessRepository(this);
    await getData();
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
  Future<void> onLoadMore() {
    // TODO: implement onLoadMore
    throw UnimplementedError();
  }
}
