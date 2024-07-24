import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class HealthInsuranceCardInfo extends GetView<HealthInsuranceCardController> {
  const HealthInsuranceCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      paddingModel: const PaddingModel(
        paddingHorizontal: AppDimens.defaultPadding,
        paddingVerical: AppDimens.paddingVerySmall,
      ),
      linearGradient: const LinearGradient(
        colors: AppColors.linearCardBackgroundColor,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      radiusModel: const RadiusModel(
        radiusAll: AppDimens.radius8,
      ),
      child: Obx(
        () => Column(
          children: [
            IntrinsicHeight(
              child: Row(
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
                            height: 75.ratioH,
                            width: 75.ratioW,
                            fit: BoxFit.cover,
                          ),
                          urlImage: controller.pageBuilderController
                                  .memberInfomation.value?.avatar
                                  .toUrlCDN() ??
                              "",
                        )
                      : Assets.images.srcImagesAvatar.image(
                          height: 75.ratioH,
                          width: 75.ratioW,
                          fit: BoxFit.cover,
                        ),
                  UtilWidget.sizedBoxWidthPadding,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBuild(
                        title: controller.pageBuilderController.memberInfomation
                                .value?.fullName ??
                            "",
                        isBoldText: true,
                      ),
                      const TextBuild(title: "Thời hạn có giá trị"),
                      TextBuild(
                          title:
                              "${controller.pageBuilderController.memberInfomation.value?.bhytTuNgay} đến ${controller.pageBuilderController.memberInfomation.value?.bhytDenNgay}")
                    ],
                  )
                ],
              ),
            ),
            UtilWidget.sizedBoxPadding,
            UtilWidget.buildDivider(),
            UtilWidget.sizedBoxPadding,
            _rowInfo(
                HealthInsuranceCard.dateOfBirth,
                controller.pageBuilderController.memberInfomation.value
                        ?.birthday ??
                    ""),
            _rowInfo(
              HealthInsuranceCard.sex,
              AppStr.sex[controller
                          .pageBuilderController.memberInfomation.value?.sex
                          ?.toLowerCase() ??
                      ""] ??
                  "",
            ),
            _rowInfo(
                HealthInsuranceCard.codeBHYT,
                controller.pageBuilderController.memberInfomation.value?.code ??
                    ""),
            _rowInfo(
                HealthInsuranceCard.addressDKKCBBD,
                controller.pageBuilderController.memberInfomation.value
                        ?.noiDkkcbBd ??
                    ""),
            _rowInfo(
                HealthInsuranceCard.time,
                controller.pageBuilderController.memberInfomation.value
                        ?.thoiDiem5Nam ??
                    ""),
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
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: TextBuild(
                  title: value,
                ),
              ),
            ),
          ],
        ),
        UtilWidget.sizedBox10,
        UtilWidget.buildDivider(color: Colors.black.withOpacity(0.2)),
        UtilWidget.sizedBox10,
      ],
    );
  }
}
