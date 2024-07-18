import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class MonthlyBenefitUI extends TabUI<MonthlyBenefitController> {
  const MonthlyBenefitUI({super.key});

  @override
  Widget buildBody() {
    return Column(
      children: [
        const HeaderPageComponent(
          headerTitle: BenefitInfomationString.headerMonthly,
        ),
        UtilWidget.sizedBoxPadding,
        Expanded(
          child: Obx(
            () => SimpleListView(
                scrollPhysics: const NeverScrollableScrollPhysics(),
                data: controller.listResponse.value,
                separatorWidget: UtilWidget.sizedBox8,
                itemBuilder: (context, index) {
                  return BenefitInfomationItems.monthly(
                      controller.listResponse[index]);
                }),
          ),
        ),
      ],
    );
  }
}
