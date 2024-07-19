import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class UserInfoDrawer extends GetView<PageBuilderController> {
  const UserInfoDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          UtilWidget.sizedBoxPaddingHuge,
          (controller.memberInfomation.value?.avatar).isStringNotEmpty
              ? NetworkImageWidget(
                  widgetImageBuilder: (context, imageProvider) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 100.ratioH,
                          width: 100.ratioW,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                            ),
                          ),
                        ));
                  },
                  errorWidget: Assets.images.srcImagesAvatar.image(
                    height: 100.ratioH,
                    width: 100.ratioW,
                    fit: BoxFit.cover,
                  ),
                  urlImage:
                      controller.memberInfomation.value?.avatar.toUrlCDN() ??
                          "",
                )
              : Assets.images.srcImagesAvatar.image(
                  height: 100.ratioH,
                  width: 100.ratioW,
                  fit: BoxFit.cover,
                ),
          UtilWidget.sizedBoxPadding,
          TextBuild(
            title: controller.memberInfomation.value?.fullName ?? "",
            textColor: Colors.white,
            fontSize: AppDimens.sizeTextMedium,
          ),
          UtilWidget.sizedBoxPadding,
          TextBuild(
            title: controller.memberInfomation.value?.code ?? "",
            textColor: Colors.white,
            fontSize: AppDimens.sizeTextMedium,
          ),
        ],
      ),
    );
  }
}
