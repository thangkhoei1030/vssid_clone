import 'package:get/get.dart';
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
          funcion: () {
            Get.toNamed(AppRoutes.healthInsuranceCard);
          },
          icon: Icons.card_membership,
          title: ProfileManagerString.healthInsuranceCard,
          iconColor: Colors.blue,
          textColor: Colors.black,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () {
            Get.toNamed(AppRoutes.participationProcess);
          },
          icon: Icons.rotate_left_sharp,
          title: ProfileManagerString.participationProcess,
          iconColor: Colors.blue,
          textColor: Colors.black,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () {
            Get.toNamed(AppRoutes.benefitInfomation);
          },
          icon: Icons.account_circle,
          title: ProfileManagerString.beneficiaryInformation,
          iconColor: Colors.blue,
          textColor: Colors.black,
        ),
        UtilWidget.sizedBoxPadding,
        MenuActionItem(
          funcion: () {},
          icon: Icons.medical_services,
          title: ProfileManagerString.healthRecords,
          iconColor: Colors.blue,
          textColor: Colors.black,
        ),
        UtilWidget.sizedBoxPadding,
      ],
    );
  }
}
