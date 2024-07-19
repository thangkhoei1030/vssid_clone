import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';
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
            image: Assets.images.srcImagesNewMenuThongbao,
            title: PageBuilderString.notification,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), Get.toNamed(AppRoutes.news)},
            image: Assets.images.srcImagesNewMenuTintuc,
            title: PageBuilderString.news,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(0)},
            image: Assets.images.srcImagesNewMenuCanhan,
            title: PageBuilderString.profileManager,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(1)},
            image: Assets.images.srcImagesDvcongtrang,
            title: PageBuilderString.publicService,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(2)},
            image: Assets.images.srcImagesNewMenuTracuu,
            title: PageBuilderString.lookUpOnline,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(3)},
            image: Assets.images.srcImagesNewMenuHotro,
            title: PageBuilderString.support,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), Get.toNamed(AppRoutes.setting)},
            image: Assets.images.srcImagesNewMenuCaidat,
            title: PageBuilderString.settings,
          ),
          UtilWidget.sizedBoxPaddingHuge,
          UtilWidget.sizedBoxPaddingHuge,
          UtilWidget.sizedBoxPaddingHuge,
          MenuActionItem(
            funcion: () {},
            image: Assets.images.srcImagesLock01,
            title: PageBuilderString.changePassword,
            isNeedIconSuffix: false,
          ),
          MenuActionItem(
            funcion: () => controller.logout(),
            image: Assets.images.srcImagesNewMenuDangxuat,
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
    this.icon,
    required this.title,
    this.isNeedIconSuffix = true,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
    this.iconSize,
    this.svg,
    this.image,
  });

  final Function() funcion;

  final SvgGenImage? svg;

  final IconData? icon;

  final String title;

  final bool isNeedIconSuffix;

  final Color textColor;

  final Color iconColor;

  final double? iconSize;

  final AssetGenImage? image;

  @override
  Widget build(BuildContext context) {
    return SimpleButton(
      onPressed: funcion,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            image != null
                ? image!.image(
                    height: iconSize ?? AppDimens.sizeIconMedium,
                    width: iconSize ?? AppDimens.sizeIconMedium,
                  )
                : svg != null
                    ? svg!.svg(
                        color: iconColor,
                        height: iconSize ?? AppDimens.sizeIconMedium,
                        width: iconSize ?? AppDimens.sizeIconMedium,
                      )
                    : Icon(
                        icon,
                        color: iconColor,
                        size: iconSize ?? AppDimens.sizeIconMedium,
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
                      ),
                      const Spacer(),
                      if (isNeedIconSuffix)
                        Icon(
                          Icons.arrow_forward_ios,
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
