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
      child: Column(
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                child: CardBuilder(
                  backgroundColor: Colors.white,
                  height: 50.h,
                  width: 50.w,
                  radiusModel: const RadiusModel(radiusAll: 50),
                  child: Icon(
                    Icons.account_circle,
                    size: 40,
                    color: context.onSurfaceColor,
                  ),
                ),
              ),
              UtilWidget.sizedBoxWidthPadding,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextBuild(
                    title: "Ngo Quang Thang",
                    isBoldText: true,
                  ),
                  UtilWidget.sizedBoxPadding,
                  const TextBuild(title: "Thời hạn có giá trị"),
                  UtilWidget.sizedBoxPadding,
                  TextBuild(
                      title:
                          "${DateTimeFormat().convertToString(DateTime.now(), DateTimePattern.PATTERN_1)} đến ${DateTimeFormat().convertToString(DateTime.now(), DateTimePattern.PATTERN_1)}")
                ],
              )
            ],
          ),
          UtilWidget.sizedBoxPadding,
          UtilWidget.buildDivider(),
          UtilWidget.sizedBoxPadding,
          _rowInfo(HealthInsuranceCard.dateOfBirth, "value"),
          _rowInfo(HealthInsuranceCard.sex, "value"),
          _rowInfo(HealthInsuranceCard.codeBHYT, "value"),
          _rowInfo(HealthInsuranceCard.addressDKKCBBD, "value"),
          _rowInfo(HealthInsuranceCard.time, "value"),
        ],
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
