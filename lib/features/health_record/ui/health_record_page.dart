import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class HealthRecordPage extends BaseGetWidget<HealthRecordController> {
  const HealthRecordPage({super.key});
  @override
  Widget buildWidgets(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: PageScaffold(
        customAppBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight * 4),
          child: SafeArea(
            top: false,
            child: Column(
              children: [
                SizedBox(
                  height: AppDimens.appBarSize(context),
                  child: Stack(
                    children: [
                      UtilWidget.appBarBgImage,
                      Container(
                        child: Column(
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
                                  title: HealthRecordStr.healthRecord
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
                      ),
                    ],
                  ),
                ),
                UtilWidget.sizedBox5,
                const UserInfoShort(),
                UtilWidget.sizedBox5,
                TabBar(
                  controller: controller.tabController,
                  indicatorColor: Colors.black.withOpacity(0.2),
                  dividerColor: Colors.black.withOpacity(0.2),
                  indicator: const BoxDecoration(),
                  indicatorWeight: 1,
                  onTap: (index) {
                    controller.tabController.animateTo(index);
                    controller.currentIndexTab.value = index;
                  },
                  // isScrollable: true,

                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.blue,
                  labelStyle: Get.textTheme.bodySmall!
                      .copyWith(fontSize: AppDimens.sizeTextVerySmall),
                  tabs: [
                    _tabItem(
                      HealthRecordStr.history,
                      0,
                      image: Assets.images.srcImagesSokhamchuabenh,
                      imageSelected: Assets.images.srcImagesSokhamchuabenhBlu,
                    ),
                    _tabItem(
                      HealthRecordStr.giaycap,
                      1,
                      image: Assets.images.srcImagesGiayChungNhan,
                      imageSelected: Assets.images.srcImagesGiayChungHanXanh,
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
              BodyContent<HealthRecordHistoryTabController>.lichsu(),
              BodyContent<HealthRecordReleaseDocumentController>.giaycap(),
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
      return SizedBox(
        height: 100.ratioH,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            image != null && imageSelected != null
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
                        color: color)
                    : Icon(
                        icon,
                        size: AppDimens.sizeIconLarge,
                        color: color,
                      ),
            UtilWidget.sizedBox5,
            Flexible(
              child: TextBuild(
                title: title,
                isAutoSizeText: true,
                fontSize: AppDimens.sizeTextSmall,
                textColor: color,
                overflow: TextOverflow.visible,
              ),
            )
          ],
        ),
      );
    });
  }
}
