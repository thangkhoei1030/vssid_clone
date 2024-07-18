import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

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
            top: false,
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  height:
                      kToolbarHeight + MediaQuery.of(context).viewPadding.top,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SimpleButton(
                            onPressed: () {
                              Get.back();
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
                ),
                UtilWidget.sizedBoxPadding,
                Container(
                  color: Colors.white,
                  child: TabBar(
                    controller: controller.tabController,
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    indicator: const BoxDecoration(),
                    indicatorWeight: 1,
                    onTap: (index) {
                      controller.tabController.animateTo(index);
                      controller.indexTab.value = index;
                    },
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.blue,
                    labelPadding: const EdgeInsets.symmetric(
                        vertical: AppDimens.paddingVerySmall),
                    tabs: [
                      _tabItem(
                        ParticipationProcessString.bhxh,
                        0,
                        svg: Assets.svg.bhxh,
                      ),
                      _tabItem(
                        ParticipationProcessString.bhtn,
                        1,
                        svg: Assets.svg.bhtn,
                      ),
                      _tabItem(
                        ParticipationProcessString.bhtnld,
                        2,
                        svg: Assets.svg.bhld,
                      ),
                      _tabItem(
                        ParticipationProcessString.bhyt,
                        3,
                        svg: Assets.svg.bhyt,
                      ),
                      _tabItem(
                        ParticipationProcessString.C14TS,
                        4,
                        svg: Assets.svg.note,
                      ),
                    ],
                  ),
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
    int indexTab, {
    SvgGenImage? svg,
    IconData? icon,
  }) {
    return Obx(() {
      final color =
          controller.indexTab.value == indexTab ? Colors.blue : Colors.black;
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
                ),
          UtilWidget.sizedBox5,
          SizedBox(
            height: 30.h,
            child: TextBuild(
              isAutoSizeText: true,
              fontSize: AppDimens.sizeTextSmall,
              title: title,
              textColor: color,
              maxLines: 2,
            ),
          )
        ],
      );
    });
  }
}
