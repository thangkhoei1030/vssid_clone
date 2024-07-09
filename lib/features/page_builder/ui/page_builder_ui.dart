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
            title: StreamBuilder(
              stream: controller.currentIndexPage.stream,
              builder: (context, snapshot) => TextBuild(
                title: controller.titleAppBar.toUpperCase(),
                fontSize: AppDimens.sizeTextMedium,
              ),
            ),
            centerTitle: true,
          ),
          body: PageView(
            controller: controller.pageController,
            allowImplicitScrolling: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              ProfileManagerPage(),
              PublicServicePage(),
              LookUpOnline(),
              SupportPage(),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CustomBottomBar(
                        label: PageBuilderString.profileManagerShort,
                        // activeIcon: Icons.account_circle_rounded,
                        icon: Iconsax.user_octagon,
                        index: 0,
                      ),
                      const CustomBottomBar(
                        label: PageBuilderString.publicServiceShort,
                        // activeIcon: Icons.list_alt_sharp,
                        icon: Iconsax.archive_book,
                        index: 1,
                      ),
                      CustomBottomBar(
                        label: PageBuilderString.lookUpOnlineShort,
                        // activeIcon: IconAsset.ASSET_ICON_BELL_BING_BOLD_SVG,
                        svg: Assets.svg.searchScan,
                        index: 2,
                      ),
                      const CustomBottomBar(
                        label: PageBuilderString.supportShort,

                        // activeIcon: IconAsset.ASSET_ICON_PROPERTY_36_BOLD_SVG,
                        icon: Iconsax.message_question,
                        index: 3,
                      ),
                      // if (isVipMember.isFalse) Container(width: 0,height: 0,)
                    ]),
              ],
            ).paddingSymmetric(
              vertical: AppDimens.defaultPadding,
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
  });

  final String label;

  final SvgGenImage? svg;

  final IconData? icon;

  final int index;

  @override
  Widget build(BuildContext context) {
    return SimpleButton(
      onPressed: () {
        controller.onPageChange(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => svg != null
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
          UtilWidget.sizedBox10,
          TextBuild(
            title: label,
          ),
        ],
      ),
    );
  }
}
