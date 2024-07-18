import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class OneTimeBenefitUI extends TabUI<OneTimeBenefitController> {
  const OneTimeBenefitUI({super.key});

  @override
  Widget buildBody() {
    return Column(
      children: [
        const HeaderPageComponent(
          headerTitle: BenefitInfomationString.headerOneTime,
        ),
        UtilWidget.sizedBoxPadding,
        Expanded(
          child: Obx(
            () => SimpleListView(
                scrollPhysics: const NeverScrollableScrollPhysics(),
                data: controller.listResponse.value,
                separatorWidget: UtilWidget.sizedBox8,
                itemBuilder: (context, index) {
                  return BenefitInfomationItems.onetime(
                      controller.listResponse[index]);
                }),
          ),
        ),
      ],
    );
  }
}
