import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ODSTBenefitUI extends TabUI<ODTSBenefitController> {
  const ODSTBenefitUI({super.key});

  @override
  Widget buildBody() {
    return Obx(
      () => SimpleListView(
          scrollPhysics: const NeverScrollableScrollPhysics(),
          data: controller.listResponse.value,
          separatorWidget: UtilWidget.sizedBox8,
          itemBuilder: (context, index) {
            return BenefitInfomationItems.odts(controller.listResponse[index]);
          }),
    );
  }
}
