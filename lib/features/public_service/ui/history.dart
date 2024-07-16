import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class History extends BaseRefreshWidget<HistoryController> {
  const History({super.key});

  @override
  HistoryController get controller => Get.put(HistoryController());

  @override
  Widget buildWidgets(BuildContext context) {
    return buildPageReload(
        showAppBar: false,
        enablePullDown: true,
        child: Obx(
          () => Column(
            children: controller.listSearchResponse
                .map((e) => HistoryItemComponent(
                      response: e,
                    ))
                .toList(),
          ),
        ));
  }
}
