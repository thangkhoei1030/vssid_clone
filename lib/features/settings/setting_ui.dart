import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({super.key});

  @override
  SettingController get controller => Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
        showAppBar: true,
        customAppBar: UtilWidget.customAppBar(
          context,
          leading: SimpleButton(
            onPressed: () {
              Get.back();
            },
            child: UtilWidget.appBarIcon(Icons.arrow_back_ios_new),
          ),
          title: TextBuild(
            title: SettingStr.setting.toUpperCase(),
            fontSize: AppDimens.sizeTextLarge,
            textColor: Colors.white,
          ),
        ),
        showBackButton: true,
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextBuild(
                        textAlign: TextAlign.center,
                        title: SettingStr.language,
                        fontSize: AppDimens.sizeTextMedium,
                        textColor: context.onSurfaceColor,
                      ),
                    ),
                  ),
                  Assets.images.srcImagesVn.image(),
                ],
              ),
            ),
            UtilWidget.sizedBoxPadding,
            SimpleButton(
                child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextBuild(
                        textAlign: TextAlign.center,
                        title: SettingStr.enbaleBiometricLogin,
                        fontSize: AppDimens.sizeTextMedium,
                        textColor: context.onSurfaceColor,
                      ),
                    ),
                  ),
                  Align(
                    child: Obx(
                      () => Checkbox(
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                          value: controller.enableBiometricLogin.value,
                          onChanged: (val) {
                            controller.enableBiometricLogin.value =
                                val ?? false;
                          }),
                    ),
                  )
                ],
              ),
            )),
          ],
        ).paddingAll(AppDimens.defaultPadding));
  }
}
