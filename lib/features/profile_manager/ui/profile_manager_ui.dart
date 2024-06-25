import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ProfileManagerPage extends BaseGetWidget<ProfileManagerController> {
  const ProfileManagerPage({super.key});
  @override
  ProfileManagerController get controller =>
      Get.put(ProfileManagerControllerImp());
  @override
  Widget buildWidgets(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SocialInsuranceCard(),
          UtilWidget.sizedBoxPaddingHuge,
          const ProfileManagerAction(),
        ],
      ).paddingAll(AppDimens.defaultPadding),
    );
  }
}
