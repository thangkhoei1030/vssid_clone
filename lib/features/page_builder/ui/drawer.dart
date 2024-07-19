import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class PageBuilderDrawer extends GetView<PageBuilderController> {
  const PageBuilderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserInfoDrawer(),
        UtilWidget.sizedBoxPadding,
        const Expanded(
          child: MenuActionDrawer(),
        ),
        UtilWidget.sizedBoxPadding,
        const FooterDrawer(),
      ],
    ).paddingAll(AppDimens.defaultPadding);
  }
}
