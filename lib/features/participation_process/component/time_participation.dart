import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class TimeParticipation extends StatelessWidget {
  const TimeParticipation({super.key});

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
              title: ParticipationProcessString.process,
              isBoldText: true,
              fontSize: AppDimens.sizeTextMedium,
            ),
            UtilWidget.sizedBox5,
            const TextBuild(
              title:
                  "${ParticipationProcessString.totalTimeJoin}: 1 năm 2 tháng",
            ),
            UtilWidget.sizedBox5,
            const TextBuild(
              title: "${ParticipationProcessString.totalTimeDebt}: 0 tháng",
              textColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
