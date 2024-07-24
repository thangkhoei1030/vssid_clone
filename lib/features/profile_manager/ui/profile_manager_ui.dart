import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ProfileManagerPage extends BaseGetWidget<ProfileManagerController> {
  const ProfileManagerPage({super.key});
  @override
  ProfileManagerController get controller =>
      Get.put(ProfileManagerControllerImp());

  static const int profileManagerNavigatorId = 0;
  @override
  Widget buildWidgets(BuildContext context) {
    return UtilWidget.navigatorWithBottomBar(
      profileManagerNavigatorId,
      Column(
        children: [
          const PageBuilderAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SocialInsuranceCard(),
                  UtilWidget.sizedBoxPaddingHuge,
                  const ProfileManagerAction(),
                ],
              ).paddingAll(AppDimens.defaultPadding),
            ),
          ),
        ],
      ),
    );
  }
}
