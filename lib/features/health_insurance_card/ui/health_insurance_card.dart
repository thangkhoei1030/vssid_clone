import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class HealthInsuranceCardPage
    extends BaseGetWidget<HealthInsuranceCardController> {
  const HealthInsuranceCardPage({super.key});
  @override
  HealthInsuranceCardController get controller =>
      Get.put(HealthInsuranceCardControllerImp());
  @override
  Widget buildWidgets(BuildContext context) {
    return PageScaffold(
      showAppBar: true,
      showBackButton: true,
      title: TextBuild(
        title: HealthInsuranceCard.cardBHYT.toUpperCase(),
        textColor: Colors.white,
        fontSize: AppDimens.sizeTextLarge,
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const HealthInsuranceCardInfo(),
                  UtilWidget.sizedBoxPadding,
                  const BenefitInfo(),
                ],
              ).paddingSymmetric(
                horizontal: AppDimens.defaultPadding,
                vertical: AppDimens.paddingVerySmall,
              ),
            ),
          ),
          const CardAction()
        ],
      ),
    );
  }
}
