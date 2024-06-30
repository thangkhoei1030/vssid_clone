import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ParticipationProcessPage extends GetView<ParticipationProcessController> {
  const ParticipationProcessPage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: PageScaffold(
        customAppBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight * 3),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  // color: Colors.blue,
                  height: kToolbarHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SimpleButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          // color: Colors.white,
                        ),
                      ),
                      TextBuild(
                        title: ParticipationProcessString.processTitle
                            .toUpperCase(),
                        fontSize: AppDimens.sizeTextLarge,
                        // textColor: Colors.white,
                      ),
                      const SizedBox.shrink()
                    ],
                  ).paddingSymmetric(
                    horizontal: AppDimens.defaultPadding,
                  ),
                ),
                UtilWidget.sizedBoxPadding,
                TabBar(
                  controller: controller.tabController,
                  // automaticIndicatorColorAdjustment: true,
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  indicator: const BoxDecoration(),
                  indicatorWeight: 1,
                  onTap: (index) {
                    controller.tabController.animateTo(index);
                  },
                  // isScrollable: true,

                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.blue,
                  labelPadding: const EdgeInsets.symmetric(
                      vertical: AppDimens.paddingVerySmall),
                  tabs: [
                    _tabItem(Icons.list, ParticipationProcessString.bhxh),
                    _tabItem(Icons.rotate_left_rounded,
                        ParticipationProcessString.bhtn),
                    _tabItem(Icons.list, ParticipationProcessString.bhtnld),
                    _tabItem(Icons.rotate_left_rounded,
                        ParticipationProcessString.bhyt),
                    _tabItem(Icons.list, PublicServiceString.service),
                  ],
                ),
              ],
            ),
          ),
        ),
        child:
            TabBarView(controller: controller.tabController, children: const [
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
    IconData icon,
    String title,
  ) {
    return Column(
      children: [
        Icon(
          icon,
          size: AppDimens.sizeIconLarge,
        ),
        Text(
          title,
        )
      ],
    );
  }
}
