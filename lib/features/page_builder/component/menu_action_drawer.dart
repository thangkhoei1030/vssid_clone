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
    final textStyle = Get.textTheme.bodySmall!.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: AppDimens.sizeTextDefault,
    );

    final dividerAndIconColor = Colors.white.withOpacity(0.3);

    return SingleChildScrollView(
      child: Column(
        children: [
          MenuActionItem(
            funcion: () {},
            image: Assets.images.srcImagesNewMenuThongbao,
            title: PageBuilderString.notification,
            style: textStyle,
            iconColor: dividerAndIconColor,
            dividerColor: dividerAndIconColor,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), Get.toNamed(AppRoutes.news)},
            image: Assets.images.srcImagesNewMenuTintuc,
            title: PageBuilderString.news,
            style: textStyle,
            iconColor: dividerAndIconColor,
            dividerColor: dividerAndIconColor,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(0)},
            image: Assets.images.srcImagesNewMenuCanhan,
            title: PageBuilderString.profileManager,
            style: textStyle,
            iconColor: dividerAndIconColor,
            dividerColor: dividerAndIconColor,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(1)},
            image: Assets.images.srcImagesDvcongtrang,
            title: PageBuilderString.publicService,
            style: textStyle,
            iconColor: dividerAndIconColor,
            dividerColor: dividerAndIconColor,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(2)},
            image: Assets.images.srcImagesNewMenuTracuu,
            title: PageBuilderString.lookUpOnline,
            style: textStyle,
            iconColor: dividerAndIconColor,
            dividerColor: dividerAndIconColor,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), controller.onPageChange(3)},
            image: Assets.images.srcImagesNewMenuHotro,
            style: textStyle,
            title: PageBuilderString.support,
            iconColor: dividerAndIconColor,
            dividerColor: dividerAndIconColor,
          ),
          MenuActionItem(
            funcion: () => {Get.back(), Get.toNamed(AppRoutes.setting)},
            image: Assets.images.srcImagesNewMenuCaidat,
            style: textStyle,
            title: PageBuilderString.settings,
            iconColor: dividerAndIconColor,
            dividerColor: dividerAndIconColor,
          ),
          UtilWidget.sizedBoxPaddingHuge,
          UtilWidget.sizedBoxPaddingHuge,
          MenuActionItem(
            funcion: () {},
            image: Assets.images.srcImagesLock01,
            title: PageBuilderString.changePassword,
            isNeedIconSuffix: false,
            style: textStyle,
            iconColor: dividerAndIconColor,
            dividerColor: dividerAndIconColor,
          ),
          MenuActionItem(
            funcion: () => controller.logout(),
            image: Assets.images.srcImagesNewMenuDangxuat,
            title: PageBuilderString.logout,
            style: textStyle,
            isNeedIconSuffix: false,
            iconColor: dividerAndIconColor,
            dividerColor: dividerAndIconColor,
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
    this.style,
    this.iconColor,
    this.iconSize,
    this.svg,
    this.image,
    this.dividerColor,
    this.isUppercase = false,
  });

  final Function() funcion;

  final SvgGenImage? svg;

  final IconData? icon;

  final String title;

  final TextStyle? style;

  final bool isNeedIconSuffix;

  final Color? iconColor;

  final double? iconSize;

  final AssetGenImage? image;

  final Color? dividerColor;

  final bool isUppercase;

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
                        title: isUppercase ? title.toUpperCase() : title,
                        style: style,
                      ),
                      const Spacer(),
                      if (isNeedIconSuffix)
                        Icon(
                          Icons.arrow_forward_ios,
                          color: iconColor,
                        ),
                    ],
                  ).paddingSymmetric(vertical: AppDimens.paddingSmall),
                  UtilWidget.buildDivider(
                    color: dividerColor,
                    thickness: 0.5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
