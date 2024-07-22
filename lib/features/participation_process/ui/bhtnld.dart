import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class BHTNLDPage extends GetView<BHTNLDController> with GetViewLoading {
  const BHTNLDPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BuildSmartRefreshWidget(
      controller: controller,
      enablePullDown: true,
      child: loadingWidget(
          isShowLoading: controller.isShowLoading,
          child: () {
            return const Column(
              children: [
                TimeParticipation(
                  title: ParticipationProcessString.bhtnldProcess,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: TableData.bhtnld(),
                  ),
                ),
              ],
            ).paddingSymmetric(
              horizontal: AppDimens.paddingVerySmall,
            );
          }),
    );
  }
}
