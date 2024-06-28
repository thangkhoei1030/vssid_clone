import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class UserInfoDrawer extends GetView<PageBuilderController> {
  const UserInfoDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          UtilWidget.sizedBoxPaddingHuge,
          NetworkImageWidget(
              widgetImageBuilder: (context, imageProvider) {
                return CardBuilder(
                    width: 100.h,
                    height: 100.h,
                    radiusModel: const RadiusModel(radiusAll: 50),
                    child: Container(
                      height: 100.h,
                      width: 100.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                        ),
                      ),
                    ));
              },
              urlImage:
                  controller.memberInfomation.value?.avatar.toUrlCDN() ?? ""),
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
