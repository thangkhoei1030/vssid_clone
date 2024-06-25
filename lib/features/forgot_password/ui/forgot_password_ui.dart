import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ForgotPassword extends GetView<ForgotPasswordController> {
  const ForgotPassword({super.key});

  @override
  ForgotPasswordController get controller =>
      Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return LoadingOverlayWidget(
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  20,
                )),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                alignment: Alignment.topRight,
                child: SimpleButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.close,
                  ),
                ),
              ),
              UtilWidget.sizedBoxPadding,
              Obx(
                () => controller.isError.isTrue
                    ? TextBuild(title: controller.errorContent)
                    : const SizedBox.shrink(),
              ),
              SizedBox(
                width: Get.width * 2 / 3,
                child: const EmailInputComponent(),
              ),
              UtilWidget.sizedBoxPadding,
              SimpleButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.all(
                    AppDimens.paddingSmall,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: context.onSurfaceColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(AppDimens.radius8)),
                  child: TextBuild(
                    title: ForgotPasswordString.send,
                    textColor: context.onSurfaceColor,
                  ),
                ),
              )
            ]).paddingSymmetric(
              horizontal: AppDimens.defaultPadding,
              vertical: AppDimens.paddingSmall,
            ),
          ).paddingSymmetric(
            horizontal: AppDimens.defaultPadding,
          ),
        )
      ]),
    );
  }
}
