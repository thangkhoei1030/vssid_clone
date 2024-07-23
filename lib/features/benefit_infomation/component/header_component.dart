import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class HeaderPageComponent extends StatelessWidget {
  const HeaderPageComponent({super.key, required this.headerTitle});

  final String headerTitle;

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      paddingModel: const PaddingModel(
        paddingVerical: AppDimens.paddingVerySmall,
      ),
      backgroundColor: const Color.fromRGBO(239, 238, 238, 1),
      child: TextBuild(
        title: headerTitle,
        fontSize: AppDimens.sizeTextMedium,
        style: Get.textTheme.bodySmall!.copyWith(
          fontSize: AppDimens.sizeTextMedium,
          color: AppColors.onSurfaceColor2,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
