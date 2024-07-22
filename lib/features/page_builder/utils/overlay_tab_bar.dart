import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

void insertOverlayTabbar(BuildContext context) {
  return Overlay.of(context).insert(OverlayEntry(
    builder: (ctx) => const OverlayTabbarWidget(),
  ));
}

class OverlayTabbarWidget extends StatelessWidget {
  const OverlayTabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: Get.width,
      left: 0,
      bottom: kBottomNavigationBarHeight,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CustomBottomBar(
                label: PageBuilderString.profileManagerShort,
                // activeIcon: Icons.account_circle_rounded,
                image: Assets.images.srcImagesTab3,
                imageSelected: Assets.images.srcImagesTab3xanh,
                // icon: Iconsax.user_octagon,
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
    );
  }
}
