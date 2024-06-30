import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class UserInfoShort extends GetView<HealthRecordController> {
  const UserInfoShort({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NetworkImageWidget(
            widgetImageBuilder: (context, imageProvider) {
              return CardBuilder(
                  isBorder: true,
                  borderColor: Colors.grey,
                  width: 60.h,
                  height: 60.h,
                  radiusModel: const RadiusModel(radiusAll: 50),
                  child: Container(
                    height: 40.h,
                    width: 40.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                      ),
                    ),
                  ));
            },
            urlImage: controller
                    .pageBuilderController.memberInfomation.value?.anhTheBhyt
                    .toUrlCDN() ??
                ""),
        UtilWidget.sizedBoxWidthPadding,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBuild(
              title: controller
                      .pageBuilderController.memberInfomation.value?.fullName ??
                  "",
              isBoldText: true,
              fontSize: AppDimens.sizeTextMedium,
            ),
            UtilWidget.sizedBoxPadding,
            TextBuild(
              title:
                  "${ProfileManagerString.codeBHXH} ${controller.pageBuilderController.memberInfomation.value?.code ?? ""}",
              textAlign: TextAlign.start,
            ),
          ],
        )
      ],
    ).paddingSymmetric(horizontal: AppDimens.defaultPadding));
  }
}
