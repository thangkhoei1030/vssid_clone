import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class SocialInsuranceCard extends GetView<ProfileManagerController> {
  const SocialInsuranceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      backgroundColor: context.primaryColor,
      paddingModel: const PaddingModel(paddingAll: AppDimens.paddingSmall),
      linearGradient: LinearGradient(
        colors: [Colors.white.withOpacity(0.3), Colors.blue.withOpacity(0.1)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      child: Obx(
        () => Column(
          children: [
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  NetworkImageWidget(
                      widgetImageBuilder: (context, imageProvider) {
                        return CardBuilder(
                            width: 50.h,
                            height: 50.h,
                            radiusModel: const RadiusModel(radiusAll: 100),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                ),
                              ),
                            ));
                      },
                      urlImage: controller.pageBuilderController
                              .memberInfomation.value?.anhTheBhyt
                              .toUrlCDN() ??
                          ""),
                  UtilWidget.sizedBoxWidthPadding,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuild(
                        title: controller.pageBuilderController.memberInfomation
                                .value?.fullName ??
                            "",
                        isBoldText: true,
                        fontSize: AppDimens.sizeTextMedium,
                      ),
                      UtilWidget.sizedBoxPadding,
                      TextBuild(
                        title:
                            "${ProfileManagerString.codeBHXH} ${controller.pageBuilderController.memberInfomation.value?.code ?? ""}",
                        textAlign: TextAlign.start,
                      ),
                    ],
                  )
                ],
              ).paddingSymmetric(horizontal: AppDimens.defaultPadding),
            ),
            UtilWidget.sizedBoxPadding,
            UtilWidget.buildDivider(color: Colors.black.withOpacity(0.2)),
            UtilWidget.sizedBoxPadding,
            _rowInfo(
                ProfileManagerString.dateOfBirth,
                controller.pageBuilderController.memberInfomation.value
                        ?.birthday ??
                    ""),
            UtilWidget.sizedBoxPadding,
            _rowInfo(
                ProfileManagerString.cccd,
                controller.pageBuilderController.memberInfomation.value
                        ?.identityCardId ??
                    ""),
            UtilWidget.sizedBoxPadding,
            _rowInfo(
                ProfileManagerString.phone,
                controller
                        .pageBuilderController.memberInfomation.value?.phone ??
                    ""),
            UtilWidget.sizedBoxPadding,
            _rowInfo(
                ProfileManagerString.address,
                controller.pageBuilderController.memberInfomation.value
                        ?.fullAddress ??
                    ""),
            UtilWidget.sizedBoxPadding,
          ],
        ),
      ),
    );
  }

  Widget _rowInfo(String key, String value) {
    return Column(
      children: [
        Row(
          children: [
            TextBuild(
              title: key,
            ),
            UtilWidget.sizedBoxWidth10,
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: TextBuild(
                  textAlign: TextAlign.right,
                  title: value,
                ),
              ),
            ),
          ],
        ),
        UtilWidget.sizedBoxPadding,
        UtilWidget.buildDivider(color: Colors.black.withOpacity(0.2)),
      ],
    );
  }
}
