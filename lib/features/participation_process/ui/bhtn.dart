import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class BHTNPage extends GetView<BHTNController> with GetViewLoading {
  const BHTNPage({super.key});

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
                  title: ParticipationProcessString.tnProcess,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: TableData.bhtn(),
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: AppDimens.defaultPadding);
          }),
    );
  }
}
