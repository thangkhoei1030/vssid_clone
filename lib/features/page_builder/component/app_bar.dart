import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class PageBuilderAppBar extends GetView<PageBuilderController> {
  const PageBuilderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.defaultPadding,
          vertical: AppDimens.defaultPadding),
      height: kToolbarHeight + MediaQuery.of(context).viewPadding.top,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.srcImagesNewHeader01.provider(),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: SimpleButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: AppDimens.sizeIconSpinner,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: StreamBuilder(
                stream: controller.currentIndexPage.stream,
                builder: (context, snapshot) => TextBuild(
                  title: controller.titleAppBar.toUpperCase(),
                  fontSize: AppDimens.sizeTextLarge,
                  textColor: Colors.white,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Obx(
                () => controller.currentIndexPage.value == 0
                    ? Assets.images.srcImagesTb3
                        .image(
                          height: 25.ratioH,
                          width: 25.ratioW,
                        )
                        .paddingSymmetric(
                          horizontal: AppDimens.defaultPadding.ratioW,
                        )
                    : const SizedBox.shrink(),
              ),
            ),
          ),
          UtilWidget.sizedBoxPadding,
        ],
      ),
    );
  }
}
