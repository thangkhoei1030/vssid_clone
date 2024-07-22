import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class BHXHPage extends GetView<BHXHController> with GetViewLoading {
  const BHXHPage({super.key});
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
                  title: ParticipationProcessString.bhxhProcess,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: TableData.bhxh(),
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
