import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class UserInfoShort extends GetView<HealthRecordController> {
  const UserInfoShort({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        (controller.pageBuilderController.memberInfomation.value?.avatar)
                .isStringNotEmpty
            ? NetworkImageWidget(
                widgetImageBuilder: (context, imageProvider) {
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 40.ratioH,
                        width: 40.ratioW,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ));
                },
                errorWidget: Assets.images.srcImagesAvatar.image(
                  height: 40.ratioH,
                  width: 40.ratioW,
                  fit: BoxFit.cover,
                ),
                urlImage: controller.pageBuilderController.memberInfomation
                        .value?.avatar
                        .toUrlCDN() ??
                    "")
            : Assets.images.srcImagesAvatar.image(
                height: 40.ratioH,
                width: 40.ratioW,
                fit: BoxFit.cover,
              ),
        UtilWidget.sizedBoxWidthPadding,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBuild(
              title: controller
                      .pageBuilderController.memberInfomation.value?.fullName ??
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
    ).paddingSymmetric(horizontal: AppDimens.defaultPadding));
  }
}
