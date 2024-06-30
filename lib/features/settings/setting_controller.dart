import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class SettingController extends GetxController {
  final RxBool enableBiometricLogin =
      RxBool((APP_DATA.get(AppConst.keyEnableBiometricLogin) ?? false));
  @override
  void onInit() {
    super.onInit();
    enableBiometricLogin.listen((value) {
      APP_DATA.put(AppConst.keyEnableBiometricLogin, value);
    });
  }
}
