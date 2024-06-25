import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

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
          child: SizedBox(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
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
                    ).paddingSymmetric(
                      horizontal: AppDimens.defaultPadding,
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
                    },
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.blue,
                    labelPadding: const EdgeInsets.symmetric(
                        vertical: AppDimens.paddingVerySmall),
                    tabs: [
                      _tabItem(Icons.list, BenefitInfomationString.oneTime),

                      _tabItem(Icons.list, BenefitInfomationString.ODTS),
                      _tabItem(Icons.rotate_left_rounded,
                          BenefitInfomationString.monthly),
                      _tabItem(Icons.rotate_left_rounded,
                          BenefitInfomationString.unemployment),
                      // _tabItem(Icons.list, PublicServiceString.service),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(controller: controller.tabController, children: const [
          SizedBox(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
          // C14TS(),
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
        CardBuilder(
          height: 50.h,
          width: 50.w,
          radiusModel: const RadiusModel(radiusAll: 50),
          isBorder: true,
          borderColor: Colors.blue,
          child: Icon(
            icon,
            size: AppDimens.sizeIconLarge,
          ),
        ),
        UtilWidget.sizedBox5,
        Text(
          title,
        )
      ],
    );
  }
}
