import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class CardAction extends GetView<HealthInsuranceCardController> {
  const CardAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: _actionItem(
                () => null, Icons.qr_code, HealthInsuranceCard.useCard)),
        Expanded(
            child: _actionItem(
                () => null, Iconsax.card, HealthInsuranceCard.cardImage))
      ],
    );
  }

  Widget _actionItem(Function() function, IconData icon, String title) {
    return SimpleButton(
      onPressed: function,
      child: Container(
        color: Colors.white,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 35,
                color: Get.context!.onSurfaceColor.withOpacity(0.7),
              ),
              UtilWidget.sizedBoxWidth10,
              Align(
                  alignment: Alignment.center,
                  child: TextBuild(
                    title: title,
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: AppColors.onSurfaceColor2,
                      fontSize: AppDimens.sizeTextDefault,
                      fontWeight: FontWeight.w300,
                    ),
                  )),
            ],
          ).paddingSymmetric(vertical: AppDimens.defaultPadding),
        ),
      ),
    );
  }
}
