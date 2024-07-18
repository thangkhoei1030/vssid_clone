import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class VNEIDLoginButton extends StatelessWidget {
  const VNEIDLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
        onTap: () {},
        paddingModel: const PaddingModel(
          paddingHorizontal: AppDimens.defaultPadding,
          paddingVerical: AppDimens.paddingVerySmall,
        ),
        radiusModel: const RadiusModel(
          radiusAll: AppDimens.radius8,
        ),
        backgroundColor: Colors.red,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: TextBuild(
                  title: LoginStr.loginWithVNEID,
                  textColor: Colors.white,
                  isBoldText: true,
                ),
              ),
              UtilWidget.sizedBoxWidthPadding,
              Align(
                alignment: Alignment.center,
                child: CardBuilder(
                  height: 40.h,
                  radiusModel: const RadiusModel(
                    radiusAll: AppDimens.radius8,
                  ),
                  width: 40.h,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        AppDimens.radius8,
                      ),
                      child: Assets.images.vneid.image()),
                ),
              )
            ],
          ),
        ));
  }
}
