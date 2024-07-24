import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class HealthInsuranceCardPage
    extends BaseGetWidget<HealthInsuranceCardController> {
  const HealthInsuranceCardPage({super.key});
  @override
  Widget buildWidgets(BuildContext context) {
    return PageScaffold(
      showAppBar: true,
      customAppBar: UtilWidget.customAppBar(
        context,
        leading: SimpleButton(
          onPressed: () {
            Get.back(
              id: ProfileManagerPage.profileManagerNavigatorId,
            );
          },
          child: UtilWidget.appBarIcon(Icons.arrow_back_ios_new),
        ),
        title: TextBuild(
          title: HealthInsuranceCard.cardBHYT.toUpperCase(),
          textColor: Colors.white,
          fontSize: AppDimens.sizeTextLarge,
        ),
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
          const CardAction(),
        ],
      ),
    );
  }
}
