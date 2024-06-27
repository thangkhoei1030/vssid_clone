import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class LookUpBHXH extends GetView<LookUpBHXHController> {
  const LookUpBHXH({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextBuild(
                title: LookUpOnlineString.provinceAndCity,
              ),
              UtilWidget.sizedBox10,
              CardBuilder(
                radiusModel: const RadiusModel(radiusAll: AppDimens.radius8),
                paddingModel: const PaddingModel(
                  paddingHorizontal: AppDimens.defaultPadding,
                  paddingVerical: AppDimens.paddingSmall,
                ),
                isBorder: true,
                alignment: Alignment.centerLeft,
                borderColor: Colors.black.withOpacity(0.5),
                child: TextBuild(
                  title: LookUpOnlineString.selectProvince,
                  textColor: context.onSurfaceColor,
                ),
              ),
            ],
          )
        ],
      ).paddingAll(AppDimens.defaultPadding),
    ));
  }
}
