import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/pages/src_pages.dart';

class ProfileManagerAction extends StatelessWidget {
  const ProfileManagerAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.healthInsuranceCard),
          icon: Iconsax.personalcard,
          title: ProfileManagerString.healthInsuranceCard,
          iconColor: Colors.blue,
          textColor: Colors.black,
          iconSize: AppDimens.sizeIconLarge,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.participationProcess),
          icon: Iconsax.calendar_tick,
          title: ProfileManagerString.participationProcess,
          iconColor: Colors.blue,
          textColor: Colors.black,
          iconSize: AppDimens.sizeIconLarge,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.benefitInfomation),
          icon: Iconsax.user_search,
          title: ProfileManagerString.beneficiaryInformation,
          iconColor: Colors.blue,
          textColor: Colors.black,
          iconSize: AppDimens.sizeIconLarge,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () => Get.toNamed(AppRoutes.healthRecord),
          icon: Iconsax.health,
          title: ProfileManagerString.healthRecords,
          iconColor: Colors.blue,
          textColor: Colors.black,
          iconSize: AppDimens.sizeIconLarge,
        ),
        UtilWidget.sizedBoxPadding,
      ],
    );
  }
}
