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
      paddingModel: const PaddingModel(paddingAll: AppDimens.paddingSmall),
      linearGradient: LinearGradient(
        colors: [Colors.white.withOpacity(0.3), Colors.blue.withOpacity(0.1)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CardBuilder(
                  width: 50.w,
                  height: 50.h,
                  radiusModel: const RadiusModel(radiusAll: 50),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                    color: context.onSurfaceColor,
                  ),
                ),
                UtilWidget.sizedBoxWidthPadding,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBuild(
                      title: "Ngo Quang Thang",
                      isBoldText: true,
                      fontSize: AppDimens.sizeTextMedium,
                    ),
                    UtilWidget.sizedBoxPadding,
                    const TextBuild(
                      title: "${ProfileManagerString.codeBHXH} 1234",
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
          _rowInfo(ProfileManagerString.dateOfBirth, "value"),
          UtilWidget.sizedBoxPadding,
          _rowInfo(ProfileManagerString.cccd, "value"),
          UtilWidget.sizedBoxPadding,
          _rowInfo(ProfileManagerString.phone, "value"),
          UtilWidget.sizedBoxPadding,
          _rowInfo(ProfileManagerString.address, "value"),
          UtilWidget.sizedBoxPadding,
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
      ],
    );
  }

}
