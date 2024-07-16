import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class Service extends BaseRefreshWidget<ServiceController> {
  const Service({super.key});

  @override
  ServiceController get controller => Get.put(ServiceController());

  @override
  Widget buildWidgets(BuildContext context) {
    return buildPageReload(
        showAppBar: false,
        enablePullDown: true,
        child: Obx(
          () => Column(
            children: controller.listSearchResponse
                .map((e) => ServiceItemComponent(response: e))
                .toList(),
          ),
        ));
  }
}
