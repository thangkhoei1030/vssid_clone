import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class TabUI<T extends BaseTabBenefitController> extends GetView<T>
    with GetViewLoading {
  const TabUI({super.key});

  @override
  Widget build(BuildContext buildContext) {
    return loadingWidget(
      isShowLoading: controller.isShowLoading,
      child: () => BuildSmartRefreshWidget(
        controller: controller,
        enablePullDown: true,
        child: buildBody().paddingAll(AppDimens.defaultPadding),
      ),
    );
  }

  Widget buildBody();
}
