import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class SocialInsuranceCard extends GetView<ProfileManagerController> {
  const SocialInsuranceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      backgroundColor: context.primaryColor,
      paddingModel: const PaddingModel(paddingAll: AppDimens.paddingSmall),
      linearGradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.3),
          Colors.blue.withOpacity(0.1),
        ],
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
                  (controller.pageBuilderController.memberInfomation.value
                              ?.anhTheBhyt)
                          .isStringNotEmpty
                      ? NetworkImageWidget(
                          widgetImageBuilder: (context, imageProvider) {
                            return ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  height: 50.ratioH,
                                  width: 50.ratioW,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                    ),
                                  ),
                                ));
                          },
                          errorWidget: Assets.images.srcImagesAvatar.image(
                            width: 50.ratioW,
                            height: 50.ratioH,
                            fit: BoxFit.cover,
                          ),
                          urlImage: controller.pageBuilderController
                                  .memberInfomation.value?.anhTheBhyt
                                  .toUrlCDN() ??
                              "",
                        )
                      : Assets.images.srcImagesAvatar.image(
                          width: 50.ratioW,
                          height: 50.ratioH,
                          fit: BoxFit.cover,
                        ),
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
