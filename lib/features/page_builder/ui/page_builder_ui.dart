import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class PageBuilder extends BaseGetWidget<PageBuilderController> {
  const PageBuilder({super.key});

  @override
  PageBuilderController get controller => Get.put(PageBuilderControllerImp());

  @override
  Widget buildWidgets(BuildContext context) {
    controller.dependenciesController();
    return LoadingOverlayWidget(
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          primary: true,
          drawerScrimColor: Colors.black.withOpacity(0.6),
          drawer: const Drawer(
            elevation: 1,
            backgroundColor: Colors.blue,
            child: PageBuilderDrawer(),
          ),
          body: Obx(
            () => IndexedStack(
              index: controller.currentIndexPage.value,
              children: const [
                ProfileManagerPage(),
                PublicServicePage(),
                LookUpOnline(),
                SupportPage(),
              ],
            ),
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
                        label: PageBuilderString.publicService,
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
      "Image and image select same value",
    );
    return SimpleButton(
      onPressed: () {
        // if (Get.currentRoute != AppRoutes.pageBuilder) {
        //   PageRoutes.backMultiScreen(AppRoutes.pageBuilder);
        // }
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
