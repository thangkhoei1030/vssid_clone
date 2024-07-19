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
    return Column(
      children: [
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.healthInsuranceCard),
          image: Assets.images.srcImagesNewIconTheBhyt,
          title: ProfileManagerString.healthInsuranceCard,
          iconColor: Colors.blue,
          textColor: Colors.black,
          iconSize: AppDimens.sizeIconLarge * 1.25,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.participationProcess),
          title: ProfileManagerString.participationProcess,
          iconColor: Colors.blue,
          textColor: Colors.black,
          iconSize: AppDimens.sizeIconLarge * 1.25,
          image: Assets.images.srcImagesNewIconQttg,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.benefitInfomation),
          image: Assets.images.srcImagesNewIconTtHuong,
          title: ProfileManagerString.beneficiaryInformation,
          iconColor: Colors.blue,
          textColor: Colors.black,
          iconSize: AppDimens.sizeIconLarge * 1.25,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.healthRecord),
          image: Assets.images.srcImagesNewIconSoKcb,
          title: ProfileManagerString.healthRecords,
          iconColor: Colors.blue,
          textColor: Colors.black,
          iconSize: AppDimens.sizeIconLarge * 1.25,
        ),
        UtilWidget.sizedBoxPadding,
      ],
    );
  }
}
