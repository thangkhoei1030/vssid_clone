import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          preferredSize: const Size.fromHeight(kToolbarHeight * 1.75),
          child: SizedBox(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Expanded(child: SizedBox.shrink()),
                  TabBar(
                    controller: controller.tabController,
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
                      _tabItem(
                        PublicServiceString.service,
                        0,
                        icon: Iconsax.archive_book,
                      ),
                      _tabItem(
                        PublicServiceString.history,
                        1,
                        svg: Assets.svg.history,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller.tabController,
            children: const [
              Service(),
              History(),
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
  }) {
    return Obx(() {
      final color = controller.currentTabIndex.value == index
          ? Colors.blue
          : Colors.black.withOpacity(0.3);
      return Column(
        children: [
          svg != null
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
          SizedBox(
            height: 30.h,
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
