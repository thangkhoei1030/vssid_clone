import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class BenefitInfomationPage extends BaseGetWidget<BenefitInfomationController> {
  const BenefitInfomationPage({super.key});
  @override
  BenefitInfomationController get controller =>
      Get.put(BenefitInfomationController());
  @override
  Widget buildWidgets(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
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
                    vertical: AppDimens.defaultPadding,
                    horizontal: AppDimens.defaultPadding,
                  ),
                ),
                TabBar(
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
                      BenefitInfomationString.oneTime,
                      0,
                      svg: Assets.svg.note1,
                    ),

                    _tabItem(
                      BenefitInfomationString.ODTS,
                      1,
                      svg: Assets.svg.note2,
                    ),
                    _tabItem(
                      BenefitInfomationString.monthly,
                      2,
                      svg: Assets.svg.hangthang,
                    ),
                    _tabItem(
                      BenefitInfomationString.unemployment,
                      3,
                      svg: Assets.svg.thatnghiep,
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
    int indexTab, {
    IconData? icon,
    SvgGenImage? svg,
  }) {
    return Obx(() {
      final color =
          controller.indexTab.value == indexTab ? Colors.blue : Colors.black;
      return Column(
        children: [
          CardBuilder(
            height: 50.h,
            width: 50.w,
            radiusModel: const RadiusModel(radiusAll: 50),
            isBorder: true,
            borderColor: color,
            child: svg != null
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
