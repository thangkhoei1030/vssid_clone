import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class PageBuilderDrawer extends GetView<PageBuilderController> {
  const PageBuilderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInfoDrawer(),
        UtilWidget.sizedBoxPadding,
        Expanded(
          child: MenuActionDrawer(),
        ),
        UtilWidget.sizedBoxPadding,
        FooterDrawer(),
      ],
    ).paddingAll(AppDimens.defaultPadding);
  }
}
