import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({super.key});

  @override
  SettingController get controller => Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
        backgroundColorAppBar: Colors.blue,
        showAppBar: true,
        title: TextBuild(
          title: SettingStr.setting,
          fontSize: AppDimens.sizeTextLarge,
          isBoldText: true,
          textColor: Colors.white,
        ),
        showBackButton: true,
        child: Column(
          children: [
            SimpleButton(
                child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextBuild(
                        textAlign: TextAlign.center,
                        title: SettingStr.enbaleBiometricLogin,
                      ),
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        value: controller.enableBiometricLogin.value,
                        onChanged: (val) {
                          controller.enableBiometricLogin.value = val ?? false;
                        }),
                  )
                ],
              ),
            ))
          ],
        ).paddingAll(AppDimens.defaultPadding));
  }
}
