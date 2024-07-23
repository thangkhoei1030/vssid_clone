import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';
import 'package:vssid/pages/src_pages.dart';

class ProfileManagerAction extends StatelessWidget {
  const ProfileManagerAction({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Get.textTheme.bodySmall!.copyWith(
      fontSize: AppDimens.sizeTextLarge,
    );
    return Column(
      children: [
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.healthInsuranceCard),
          image: Assets.images.srcImagesNewIconTheBhyt,
          title: ProfileManagerString.healthInsuranceCard,
          iconSize: AppDimens.sizeIconLarge * 1.1,
          isUppercase: true,
          style: style,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.participationProcess),
          title: ProfileManagerString.participationProcess,
          iconSize: AppDimens.sizeIconLarge * 1.1,
          image: Assets.images.srcImagesNewIconQttg,
          isUppercase: true,
          style: style,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.benefitInfomation),
          image: Assets.images.srcImagesNewIconTtHuong,
          title: ProfileManagerString.beneficiaryInformation,
          iconSize: AppDimens.sizeIconLarge * 1.1,
          isUppercase: true,
          style: style,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.healthRecord),
          image: Assets.images.srcImagesNewIconSoKcb,
          title: ProfileManagerString.healthRecords,
          iconSize: AppDimens.sizeIconLarge * 1.1,
          isUppercase: true,
          style: style,
        ),
        UtilWidget.sizedBoxPadding,
      ],
    );
  }
}
