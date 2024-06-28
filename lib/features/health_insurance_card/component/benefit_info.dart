import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class BenefitInfo extends GetView<HealthInsuranceCardController> {
  const BenefitInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
        paddingModel: const PaddingModel(
          paddingHorizontal: AppDimens.defaultPadding,
          paddingVerical: AppDimens.paddingVerySmall,
        ),
        alignment: Alignment.centerLeft,
        linearGradient: LinearGradient(
          colors: [Colors.white.withOpacity(0.2), Colors.blue.withOpacity(0.2)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        radiusModel: const RadiusModel(
          radiusAll: AppDimens.radius8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBuild(
              title: HealthInsuranceCard.benefit,
              textColor: context.onSurfaceColor,
              isBoldText: true,
            ),
            UtilWidget.sizedBoxPadding,
            Obx(
              () => TextBuild(
                textAlign: TextAlign.start,
                title: controller.pageBuilderController.memberInfomation.value
                        ?.quyenLoi ??
                    "",
                // "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              ).paddingOnly(
                left: AppDimens.paddingSmall,
              ),
            ),
            UtilWidget.sizedBoxPaddingHuge,
            UtilWidget.sizedBoxPaddingHuge,
          ],
        ));
  }
}
