import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class BenefitInfomationController extends BaseRefreshGetxController
    with GetSingleTickerProviderStateMixin {
  late final BenefitInfomationRepository benefitInfomationRepository =
      BenefitInfomationRepository(this);

  late final TabController tabController = TabController(
    length: 4,
    vsync: this,
  );

  final RxList<BenefitInfomation> listBenefitInfomationn = RxList.empty();

  final RxInt currentIndexTab = 0.obs;

  @override
  void onInit() async {
    try {
      showLoading();
      await getData();
    } catch (e) {
      hideLoading();
    }
    super.onInit();
  }

  Future<void> getData() async {
    await benefitInfomationRepository.getBenefitInfomation().then((value) {
      if (value.data.isNotEmpty) {
        listBenefitInfomationn.assignAll(value.data);
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
