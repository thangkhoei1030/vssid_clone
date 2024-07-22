import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class PageBuilderDrawer extends GetView<PageBuilderController> {
  const PageBuilderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Assets.images.srcImagesNewBgMenu.image(
        fit: BoxFit.fill,
        height: Get.height,
        width: Get.width,
      ),
      Column(
        children: [
          const UserInfoDrawer(),
          UtilWidget.sizedBoxPadding,
          Material(
            elevation: 3,
            child: Container(
              height: 2,
              width: Get.width,
              color: const Color.fromRGBO(1, 117, 200, 1),
            ),
          ),
          UtilWidget.sizedBoxPadding,
          const Expanded(
            child: MenuActionDrawer(),
          ),
          UtilWidget.sizedBoxPadding,
          const FooterDrawer(),
        ],
      ).paddingAll(AppDimens.defaultPadding),
    ]);
  }
}
