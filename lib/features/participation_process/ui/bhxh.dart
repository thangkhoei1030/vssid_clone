import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class BHXHPage extends GetView<BHXHController> {
  const BHXHPage({super.key});

  @override
  BHXHController get controller => Get.put(BHXHController());

  @override
  Widget build(BuildContext context) {
    return UtilWidget.buildErrorOccurred(
      controller,
      isPage: false,
      onReload: controller.onRefresh,
      isHaveData: () => controller.listResponse.isNotEmpty,
      child: Column(
        children: const [
          TimeParticipation(),
          Expanded(
            child: SingleChildScrollView(
              child: TableData(),
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: AppDimens.defaultPadding),
    );
  }
}
