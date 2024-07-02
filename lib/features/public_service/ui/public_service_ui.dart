import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class PublicServicePage extends BaseGetWidget<PublicServiceController> {
  const PublicServicePage({super.key});
  @override
  PublicServiceController get controller => Get.put(PublicServiceController());
  @override
  Widget buildWidgets(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight * 1.5),
          child: SizedBox(
            child: SafeArea(
              child: Column(
                children: [
                  const Expanded(child: SizedBox.shrink()),
                  TabBar(
                    controller: controller.tabController,
                    // automaticIndicatorColorAdjustment: true,
                    indicatorColor: Colors.black.withOpacity(0.2),
                    dividerColor: Colors.black.withOpacity(0.2),
                    indicator: const BoxDecoration(),
                    indicatorWeight: 1,
                    onTap: controller.onTabChange,
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.blue,

                    labelPadding: const EdgeInsets.symmetric(
                        vertical: AppDimens.paddingVerySmall),
                    tabs: [
                      Column(
                        children: const [
                          Icon(
                            Iconsax.archive_book,
                            size: AppDimens.sizeIconLarge,
                          ),
                          Text(
                            PublicServiceString.service,
                          )
                        ],
                      ),
                      Obx(
                        () => Column(
                          children: [
                            Assets.svg.history.svg(
                              height: AppDimens.sizeIconLarge,
                              width: AppDimens.sizeIconLarge,
                              color: controller.currentTabIndex.value == 1
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                            const Text(PublicServiceString.history)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(controller: controller.tabController, children: const [
          Service(),
          History(),
          // const Service(),
        ]),
      ),
    );
  }
}
