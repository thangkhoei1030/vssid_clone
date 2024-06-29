import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class UnemploymentBenefitUI extends TabUI<UnemploymentBenefitController> {
  const UnemploymentBenefitUI({super.key});

  @override
  Widget buildBody() {
    return Obx(
      () => SimpleListView(
          scrollPhysics: const NeverScrollableScrollPhysics(),
          data: controller.listResponse.value,
          separatorWidget: UtilWidget.sizedBox8,
          itemBuilder: (context, index) {
            return BenefitInfomationItems.unemployment(
                controller.listResponse[index]);
          }),
    );
  }
}
