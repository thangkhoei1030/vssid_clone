import 'dart:ffi';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class PageBuilder extends BaseGetWidget<PageBuilderController> {
  const PageBuilder({super.key});
  @override
  PageBuilderController get controller => Get.put(PageBuilderControllerImp());
  @override
  Widget buildWidgets(BuildContext context) {
    return LoadingOverlayWidget(
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          drawer: const Drawer(
            backgroundColor: Colors.blue,
            child: PageBuilderDrawer(),
          ),
          appBar: AppBar(
            leading: Builder(
              builder: (ctx) => SimpleButton(
                onPressed: () {
                  Scaffold.of(ctx).openDrawer();
                },
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ),
            flexibleSpace: UtilWidget.appBarBgImage,
            title: StreamBuilder(
              stream: controller.currentIndexPage.stream,
              builder: (context, snapshot) => TextBuild(
                title: controller.titleAppBar.toUpperCase(),
                fontSize: AppDimens.sizeTextLarge,
                textColor: Colors.white,
              ),
            ),
            actions: [
              Obx(
                () => controller.currentIndexPage.value == 0
                    ? Assets.images.srcImagesTb3
                        .image(
                          height: 25.ratioH,
                          width: 25.ratioW,
                        )
                        .paddingSymmetric(
                          horizontal: AppDimens.defaultPadding.ratioW,
                        )
                    : const SizedBox.shrink(),
              )
            ],
            centerTitle: true,
          ),
          body: LayoutBuilder(
            builder: (ctx, constraints) {
              return PageView(
                controller: controller.pageController,
                allowImplicitScrolling: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  ProfileManagerPage(),
                  PublicServicePage(),
                  LookUpOnline(),
                  SupportPage(),
                ],
              );
            },
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomBottomBar(
                        label: PageBuilderString.profileManagerShort,
                        // activeIcon: Icons.account_circle_rounded,
                        image: Assets.images.srcImagesTab3,
                        imageSelected: Assets.images.srcImagesTab3xanh,
                        icon: Iconsax.user_octagon,
                        index: 0,
                      ),
                      CustomBottomBar(
                        label: PageBuilderString.publicServiceShort,
                        // activeIcon: Icons.list_alt_sharp,
                        image: Assets.images.srcImagesDichvucongtab,
                        imageSelected: Assets.images.srcImagesDichvucongtabxanh,
                        index: 1,
                      ),
                      CustomBottomBar(
                        label: PageBuilderString.lookUpOnlineShort,
                        // activeIcon: IconAsset.ASSET_ICON_BELL_BING_BOLD_SVG,
                        image: Assets.images.srcImagesTab4,
                        imageSelected: Assets.images.srcImagesTab4xanh,
                        index: 2,
                      ),
                      CustomBottomBar(
                        label: PageBuilderString.supportShort,
                        // activeIcon: IconAsset.ASSET_ICON_PROPERTY_36_BOLD_SVG,
                        image: Assets.images.srcImagesTab5,
                        imageSelected: Assets.images.srcImagesTab5xanh,
                        index: 3,
                      ),
                      // if (isVipMember.isFalse) Container(width: 0,height: 0,)
                    ]),
              ],
            ).paddingSymmetric(
              vertical: AppDimens.paddingVerySmall,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBottomBar extends GetView<PageBuilderController> {
  const CustomBottomBar({
    super.key,
    required this.label,
    // required this.activeIcon,
    this.icon,
    required this.index,
    this.svg,
    this.image,
    this.imageSelected,
  });

  final String label;

  final SvgGenImage? svg;

  final IconData? icon;

  final int index;

  final AssetGenImage? image;

  final AssetGenImage? imageSelected;

  @override
  Widget build(BuildContext context) {
    assert(
        (image == null && imageSelected == null) ||
            (image != null && imageSelected != null),
        "Image and image select same value");
    return SimpleButton(
      onPressed: () {
        controller.onPageChange(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => image != null && imageSelected != null
                ? index == controller.currentIndexPage.value
                    ? imageSelected!.image(
                        height: AppDimens.sizeIconMedium,
                        width: AppDimens.sizeIconMedium,
                      )
                    : image!.image(
                        height: AppDimens.sizeIconMedium,
                        width: AppDimens.sizeIconMedium,
                      )
                : svg != null
                    ? svg!.svg(
                        color: index == controller.currentIndexPage.value
                            ? context.onSurfaceColor
                            : context.onPrimaryColor,
                      )
                    : Icon(
                        icon,
                        size: AppDimens.sizeIconMedium,
                        color: index == controller.currentIndexPage.value
                            ? context.onSurfaceColor
                            : context.onPrimaryColor,
                      ),
          ),
          UtilWidget.sizedBox5,
          TextBuild(
            title: label,
            fontSize: AppDimens.sizeTextSmall,
          ),
        ],
      ),
    );
  }
}
