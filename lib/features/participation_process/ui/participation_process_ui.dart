import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class ParticipationProcessPage extends GetView<ParticipationProcessController> {
  const ParticipationProcessPage({super.key});
  @override
  Widget build(BuildContext context) {
    ParticipationProcessBindings().dependencies();
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: PageScaffold(
        customAppBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight * 2.8),
          child: SafeArea(
            top: false,
            child: Column(
              children: [
                SizedBox(
                  height: AppDimens.appBarSize(context),
                  child: Stack(
                    children: [
                      UtilWidget.appBarBgImage,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SimpleButton(
                                onPressed: () {
                                  Get.back(
                                    id: ProfileManagerPage
                                        .profileManagerNavigatorId,
                                  );
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                              TextBuild(
                                title: ParticipationProcessString.processTitle
                                    .toUpperCase(),
                                fontSize: AppDimens.sizeTextLarge,
                                textColor: Colors.white,
                              ),
                              const SizedBox.shrink()
                            ],
                          ),
                        ],
                      ).paddingSymmetric(
                        vertical: AppDimens.defaultPadding,
                        horizontal: AppDimens.defaultPadding,
                      ),
                    ],
                  ),
                ),
                UtilWidget.sizedBoxPadding,
                TabBar(
                  controller: controller.tabController,
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  indicator: const BoxDecoration(),
                  indicatorWeight: 1,
                  onTap: (index) {
                    controller.tabController.animateTo(index);
                    controller.currentIndexTab.value = index;
                  },
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.blue,
                  labelPadding: const EdgeInsets.symmetric(
                      vertical: AppDimens.paddingVerySmall),
                  tabs: [
                    _tabItem(
                      ParticipationProcessString.bhxh,
                      0,
                      image: Assets.images.srcImagesNewIconBhxhD,
                      imageSelected: Assets.images.srcImagesNewIconBhxhE,
                    ),
                    _tabItem(
                      ParticipationProcessString.bhtn,
                      1,
                      image: Assets.images.srcImagesNewIconBhtnD,
                      imageSelected: Assets.images.srcImagesNewIconBhtnE,
                    ),
                    _tabItem(
                      ParticipationProcessString.bhtnld,
                      2,
                      image: Assets.images.srcImagesNewIconBhtnldD,
                      imageSelected: Assets.images.srcImagesNewIconBhtnldE,
                    ),
                    _tabItem(
                      ParticipationProcessString.bhyt,
                      3,
                      image: Assets.images.srcImagesNewIconBhytD,
                      imageSelected: Assets.images.srcImagesNewIconBhytE,
                    ),
                    _tabItem(
                      ParticipationProcessString.C14TS,
                      4,
                      image: Assets.images.srcImagesC14ts1,
                      imageSelected: Assets.images.srcImagesC14ts2,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller.tabController,
            children: const [
              BHXHPage(),
              BHTNPage(),
              BHTNLDPage(),
              BHYTPage(),
              C14TS(),
              // const Service(),
            ]),
      ),
    );
  }

  Widget _tabItem(
    String title,
    int index, {
    SvgGenImage? svg,
    IconData? icon,
    AssetGenImage? image,
    AssetGenImage? imageSelected,
  }) {
    assert(
        (image == null && imageSelected == null) ||
            (image != null && imageSelected != null),
        "Image and image select same value");
    return Obx(() {
      final color = controller.currentIndexTab.value == index
          ? Colors.blue
          : Colors.black.withOpacity(0.3);
      return Column(
        children: [
          Obx(
            () => image != null && imageSelected != null
                ? index == controller.currentIndexTab.value
                    ? imageSelected.image(
                        height: AppDimens.sizeIconLarge * 1.25,
                        width: AppDimens.sizeIconLarge * 1.25,
                      )
                    : image.image(
                        height: AppDimens.sizeIconLarge * 1.25,
                        width: AppDimens.sizeIconLarge * 1.25,
                      )
                : svg != null
                    ? svg.svg(
                        height: AppDimens.sizeIconLarge,
                        width: AppDimens.sizeIconLarge,
                        color: color,
                      )
                    : Icon(
                        icon,
                        size: AppDimens.sizeIconLarge.ratioH,
                      ),
          ),
          UtilWidget.sizedBox5,
          SizedBox(
            height: 25.ratioH,
            child: TextBuild(
              fontSize: AppDimens.sizeTextSmall,
              title: title,
              textColor: color,
            ),
          )
        ],
      );
    });
  }
}
