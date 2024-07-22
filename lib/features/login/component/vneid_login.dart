import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class VNEIDLoginButton extends StatelessWidget {
  const VNEIDLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
        onTap: () {},
        radiusModel: const RadiusModel(
          radiusAll: AppDimens.radius8,
        ),
        backgroundColor: const Color.fromRGBO(185, 33, 46, 1),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UtilWidget.sizedBoxWithPaddingHuge,
              Expanded(
                flex: 2,
                child: TextBuild(
                  title: LoginStr.loginWithVNEID,
                  style: Get.textTheme.bodySmall!.copyWith(
                    color: Colors.white,
                    fontSize: AppDimens.sizeTextMedium,
                    fontWeight: FontWeight.w500,
                  ),
                ).paddingSymmetric(
                  horizontal: AppDimens.defaultPadding,
                  vertical: AppDimens.paddingVerySmall,
                ),
              ),
              Expanded(
                child: CardBuilder(
                  height: 50.ratioH,
                  backgroundColor: Colors.transparent,
                  alignment: Alignment.centerRight,
                  radiusModel: const RadiusModel(
                    radiusAll: AppDimens.radius8,
                  ),
                  paddingModel: const PaddingModel(
                    paddingHorizontal: AppDimens.defaultPadding,
                    paddingVerical: 6,
                  ),
                  width: 50.ratioW,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppDimens.radius8,
                    ),
                    child: Assets.images.vneid.image(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
