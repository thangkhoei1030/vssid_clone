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
      linearGradient: const LinearGradient(
        colors: AppColors.linearCardBackgroundColor,
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
                              ?.avatar)
                          .isStringNotEmpty
                      ? NetworkImageWidget(
                          widgetImageBuilder: (context, imageProvider) {
                            return ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  height: 75.ratioH,
                                  width: 75.ratioW,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                    ),
                                  ),
                                ));
                          },
                          errorWidget: Assets.images.srcImagesAvatar.image(
                            width: 75.ratioW,
                            height: 75.ratioH,
                            fit: BoxFit.cover,
                          ),
                          urlImage: controller.pageBuilderController
                                  .memberInfomation.value?.avatar
                                  .toUrlCDN() ??
                              "",
                        )
                      : Assets.images.srcImagesAvatar.image(
                          width: 75.ratioW,
                          height: 75.ratioH,
                          fit: BoxFit.cover,
                        ),
                  UtilWidget.sizedBoxWidthPadding,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBuild(
                        title: controller.pageBuilderController.memberInfomation
                                .value?.fullName ??
                            "",
                        isBoldText: true,
                        fontSize: AppDimens.sizeTextMedium,
                      ),
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
            UtilWidget.sizedBox10,
            UtilWidget.buildDivider(color: Colors.black.withOpacity(0.5)),
            UtilWidget.sizedBox10,
            _rowInfo(
                ProfileManagerString.dateOfBirth,
                controller.pageBuilderController.memberInfomation.value
                        ?.birthday ??
                    ""),
            UtilWidget.sizedBox10,
            _rowInfo(
                ProfileManagerString.cccd,
                controller.pageBuilderController.memberInfomation.value
                        ?.identityCardId ??
                    ""),
            UtilWidget.sizedBox10,
            _rowInfo(
                ProfileManagerString.phone,
                controller
                        .pageBuilderController.memberInfomation.value?.phone ??
                    ""),
            UtilWidget.sizedBox10,
            _rowInfo(
              ProfileManagerString.address,
              controller.pageBuilderController.memberInfomation.value
                      ?.fullAddress ??
                  "",
              isLast: true,
            ),
            UtilWidget.sizedBox10,
          ],
        ),
      ),
    );
  }

  Widget _rowInfo(
    String key,
    String value, {
    bool isLast = false,
  }) {
    final textStyle = Get.textTheme.bodySmall!.copyWith(
        fontSize: AppDimens.sizeTextDefault,
        fontWeight: FontWeight.w300,
        color: Colors.black.withOpacity(
          0.7,
        ));
    return Column(
      children: [
        Row(
          children: [
            TextBuild(
              title: key,
              style: textStyle,
            ),
            UtilWidget.sizedBoxWidth10,
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: TextBuild(
                  textAlign: TextAlign.right,
                  title: value,
                  style: textStyle,
                ),
              ),
            ),
          ],
        ),
        UtilWidget.sizedBox10,
        if (!isLast)
          UtilWidget.buildDivider(color: Colors.black.withOpacity(0.2)),
      ],
    );
  }
}
