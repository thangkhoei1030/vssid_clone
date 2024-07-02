import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/pages/routes.dart';

class MenuActionDrawer extends GetView<PageBuilderController> {
  const MenuActionDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MenuActionItem(
            funcion: () {},
            icon: Iconsax.notification_bing,
            title: PageBuilderString.notification,
          ),
          MenuActionItem(
            funcion: () {},
            icon: Iconsax.book,
            title: PageBuilderString.news,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(0)},
            icon: Iconsax.user_octagon,
            title: PageBuilderString.profileManager,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(1)},
            icon: Iconsax.archive_book,
            title: PageBuilderString.publicService,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(2)},
            icon: Iconsax.global_search,
            title: PageBuilderString.lookUpOnline,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(3)},
            icon: Iconsax.call_calling,
            title: PageBuilderString.support,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), Get.toNamed(AppRoutes.setting)},
            icon: Iconsax.setting,
            title: PageBuilderString.settings,
          ),
          UtilWidget.sizedBoxPaddingHuge,
          UtilWidget.sizedBoxPaddingHuge,
          UtilWidget.sizedBoxPaddingHuge,
          MenuActionItem(
            funcion: () {},
            icon: Iconsax.lock,
            title: PageBuilderString.changePassword,
            isNeedIconSuffix: false,
          ),
          MenuActionItem(
            funcion: () => controller.logout(),
            icon: Icons.power_settings_new_outlined,
            title: PageBuilderString.logout,
            isNeedIconSuffix: false,
          ),
        ],
      ),
    );
  }
}

class MenuActionItem extends StatelessWidget {
  const MenuActionItem({
    super.key,
    required this.funcion,
    required this.icon,
    required this.title,
    this.isNeedIconSuffix = true,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
    this.iconSize = AppDimens.sizeIconMedium,
  });

  final Function() funcion;

  final IconData icon;

  final String title;

  final bool isNeedIconSuffix;

  final Color textColor;

  final Color iconColor;

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return SimpleButton(
      onPressed: funcion,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
            UtilWidget.sizedBoxWidthPadding,
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBuild(
                        title: title,
                        textColor: textColor,
                        fontSize: AppDimens.sizeTextMedium,
                        isBoldText: true,
                      ),
                      const Spacer(),
                      if (isNeedIconSuffix)
                        Icon(
                          Icons.arrow_forward,
                          color: textColor,
                        ),
                    ],
                  ).paddingSymmetric(vertical: AppDimens.paddingSmall),
                  UtilWidget.buildDivider(color: textColor.withOpacity(0.2)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
