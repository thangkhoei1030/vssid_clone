import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class BenefitInfomationPage extends BaseGetWidget<BenefitInfomationController> {
  const BenefitInfomationPage({super.key});
  @override
  Widget buildWidgets(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight * 2.4),
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
                                title: BenefitInfomationString.benefitInfomation
                                    .toUpperCase(),
                                fontSize: AppDimens.sizeTextLarge,
                                textColor: Colors.white,
                              ),
                              const SizedBox.shrink()
                            ],
                          ),
                        ],
                      ).paddingSymmetric(
                        vertical: AppDimens.paddingVerySmall,
                        horizontal: AppDimens.defaultPadding,
                      ),
                    ],
                  ),
                ),
                UtilWidget.sizedBoxPaddingMedium,
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
                      BenefitInfomationString.oneTime,
                      0,
                      image: Assets.images.srcImagesNewIconBhxhD,
                      imageSelected: Assets.images.srcImagesNewIconBhxhE,
                    ),

                    _tabItem(
                      BenefitInfomationString.ODTS,
                      1,
                      image: Assets.images.srcImagesNewIconCdOdtsD,
                      imageSelected: Assets.images.srcImagesNewIconCdOdtsE,
                    ),
                    _tabItem(
                      BenefitInfomationString.monthly,
                      2,
                      image: Assets.images.srcImagesNewIconBhtnD,
                      imageSelected: Assets.images.srcImagesNewIconBhtnE,
                    ),
                    _tabItem(
                      BenefitInfomationString.unemployment,
                      3,
                      image: Assets.images.srcImagesNewIconCdTnD,
                      imageSelected: Assets.images.srcImagesNewIconCdTnE,
                    ),
                    // _tabItem(Icons.list, PublicServiceString.service),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller.tabController,
          children: const [
            OneTimeBenefitUI(),
            ODSTBenefitUI(),
            MonthlyBenefitUI(),
            UnemploymentBenefitUI(),
          ],
        ),
      ),
    );
  }

  Widget _tabItem(
    String title,
    int index, {
    IconData? icon,
    SvgGenImage? svg,
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
          image != null && imageSelected != null
              ? index == controller.currentIndexTab.value
                  ? imageSelected.image(
                      height: AppDimens.sizeIconLarge * 1.5,
                      width: AppDimens.sizeIconLarge * 1.5,
                      fit: BoxFit.cover,
                    )
                  : image.image(
                      height: AppDimens.sizeIconLarge * 1.5,
                      width: AppDimens.sizeIconLarge * 1.5,
                    )
              : svg != null
                  ? svg.svg(
                      height: AppDimens.sizeIconLarge,
                      width: AppDimens.sizeIconLarge,
                      color: color,
                    )
                  : Icon(
                      icon,
                      size: AppDimens.sizeIconLarge,
                      color: color,
                    ),
          UtilWidget.sizedBox5,
          TextBuild(
            fontSize: AppDimens.sizeTextSmall,
            title: title,
            textColor: color,
            maxLines: 2,
          )
        ],
      );
    });
  }
}
