import 'package:get/get.dart';
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
                () => null, Icons.qr_code, HealthInsuranceCard.cardImage))
      ],
    );
  }

  Widget _actionItem(Function() function, IconData icon, String title) {
    return SimpleButton(
      onPressed: function,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
            ),
            Align(alignment: Alignment.center, child: TextBuild(title: title)),
          ],
        ).paddingSymmetric(vertical: AppDimens.defaultPadding),
      ),
    );
  }
}
