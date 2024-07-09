import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class SupportPage extends GetView<SupportController> {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: SizedBox.shrink()),
        Expanded(
          flex: 3,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.defaultPadding,
                vertical: AppDimens.paddingSmall,
              ),
              itemCount: controller.listComponent.length,
              separatorBuilder: (context, index) {
                return UtilWidget.sizedBoxPadding;
              },
              itemBuilder: (context, index) {
                return SupportItem(
                  item: controller.listComponent[index],
                );
              }),
        ),
      ],
    );
  }
}
