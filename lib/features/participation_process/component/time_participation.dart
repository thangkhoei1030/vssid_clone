import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class TimeParticipation extends StatelessWidget {
  const TimeParticipation({
    super.key,
    required this.title,
    this.totalTime = "1 năm 2 tháng",
    this.totalTimeDebt = "0 tháng",
  });

  final String title;

  final String totalTime;

  final String totalTimeDebt;

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      backgroundColor: Colors.black.withOpacity(0.03),
      paddingModel: const PaddingModel(
        paddingVerical: AppDimens.paddingSmall,
        paddingHorizontal: AppDimens.defaultPadding,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBuild(
              title: title,
              style: Get.textTheme.bodySmall!.copyWith(
                color: AppColors.onSurfaceColor2,
                fontSize: AppDimens.sizeTextMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
            UtilWidget.sizedBox5,
            TextBuild(
              title: "${ParticipationProcessString.totalTimeJoin}: $totalTime",
              textAlign: TextAlign.start,
              style: Get.textTheme.bodySmall!.copyWith(
                color: Colors.black,
                fontSize: AppDimens.sizeTextDefault,
                fontWeight: FontWeight.w500,
              ),
            ),
            UtilWidget.sizedBox5,
            TextBuild(
              title:
                  "${ParticipationProcessString.totalTimeDebt}: $totalTimeDebt",
              style: Get.textTheme.bodySmall!.copyWith(
                color: const Color.fromARGB(255, 255, 17, 0),
                fontSize: AppDimens.sizeTextDefault,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
