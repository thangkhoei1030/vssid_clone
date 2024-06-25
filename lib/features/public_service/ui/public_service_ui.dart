import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

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
                    onTap: (index) {
                      controller.tabController.animateTo(index);
                    },
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.blue,
                    labelPadding: const EdgeInsets.symmetric(
                        vertical: AppDimens.paddingVerySmall),
                    tabs: [
                      Column(
                        children: const [
                          Icon(
                            Icons.list,
                            size: AppDimens.sizeIconLarge,
                          ),
                          Text(
                            PublicServiceString.service,
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.rotate_left_rounded,
                            size: AppDimens.sizeIconLarge,
                          ),
                          Text(PublicServiceString.service)
                        ],
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
