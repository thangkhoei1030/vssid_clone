import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class BaseTabBenefitController
    extends BaseTabController<BenefitInfomation, BenefitInfomationRepository> {
  BaseTabBenefitController() {
    super.tabRepository = BenefitInfomationRepository(this);
  }

  final BenefitInfomationController benefitInfomationController = Get.find();
  @override
  Future<void> onInit() async {
    benefitInfomationController.listBenefitInfomationn.listen((data) {
      listResponse
          .assignAll(benefitInfomationController.listBenefitInfomationn);
    });
    await super.onInit();
  }

  @override
  Future<void> getData() async {
    await benefitInfomationController.getData();
  }
}
