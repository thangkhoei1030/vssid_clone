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
      child: Column(
        children: const [
          ServiceItemComponent(
            title:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            content:
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          ),
          ServiceItemComponent(
            title:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            content:
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          ),
          ServiceItemComponent(
            title:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            content:
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          ),
          ServiceItemComponent(
            title:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            content:
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          ),
          ServiceItemComponent(
            title:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            content:
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          ),
          ServiceItemComponent(
            title:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            content:
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          ),
        ],
      ),
    );
  }
}
