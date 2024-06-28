import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class HealthInsuranceCardInfo extends GetView<HealthInsuranceCardController> {
  const HealthInsuranceCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      paddingModel: const PaddingModel(
        paddingHorizontal: AppDimens.defaultPadding,
        paddingVerical: AppDimens.paddingVerySmall,
      ),
      linearGradient: LinearGradient(
        colors: [Colors.white.withOpacity(0.2), Colors.blue.withOpacity(0.2)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      radiusModel: const RadiusModel(
        radiusAll: AppDimens.radius8,
      ),
      child: Obx(
        () => Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  child: NetworkImageWidget(
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
                    ),
                    UtilWidget.sizedBoxPadding,
                    const TextBuild(title: "Thời hạn có giá trị"),
                    UtilWidget.sizedBoxPadding,
                    TextBuild(
                        title:
                            "${controller.pageBuilderController.memberInfomation.value?.bhytTuNgay} đến ${controller.pageBuilderController.memberInfomation.value?.bhytDenNgay}")
                  ],
                )
              ],
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
                controller.pageBuilderController.memberInfomation.value?.sex ??
                    ""),
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
        UtilWidget.sizedBoxPadding,
        UtilWidget.buildDivider(color: Colors.black.withOpacity(0.2)),
        UtilWidget.sizedBoxPadding,
      ],
    );
  }
}
