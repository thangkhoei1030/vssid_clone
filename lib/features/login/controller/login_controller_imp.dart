import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/main.dart';
import 'package:vssid/pages/routes.dart';

class LoginControllerImp extends LoginController {
  @override
  void onInit() {
    loginRepository = LoginRepository(this);
    super.onInit();
  }

  @override
  Future<void> biometricsLogin() async {
    if (APP_DATA.get(AppConst.keyEnableBiometricLogin) ?? false) {
      await localAuth.authenticate(
        availableFunction: () {
          password.text = APP_DATA.get(AppConst.keyUserpassword) ?? "";
          login();
        },
        notAvailableFunction: () {
          showToast(
            LoginStr.biometricAuthenticateFail,
            toastStatus: ToastStatus.error,
            toastLength: Toast.LENGTH_SHORT,
          );
        },
      );
    } else {
      showToast(
        LoginStr.biometricsNotEnable,
        toastStatus: ToastStatus.error,
        toastLength: Toast.LENGTH_LONG,
      );
    }
  }

  @override
  void login() async {
    // return Get.toNamed(AppRoutes.pageBuilder);
    if (formKey.currentState?.validate() ?? false) {
      final LoginRequest loginRequest = LoginRequest(
        username: codeBHXH.text,
        password: password.text,
      );
      await CookiesSingleton().createCookiesForUser(userName: codeBHXH.text);
      try {
        showLoadingOverlay();
        // await Future.delayed(const Duration(seconds: 5));
        await loginRepository.login(loginRequest).then((value) async {
          if (value.data != null && value.code != "error") {
            showToast(LoginStr.loginSuccess, toastStatus: ToastStatus.success);
            _saveDataToLocal(value);

            Get.toNamed(AppRoutes.pageBuilder);
          }
        });
      } finally {
        hideLoadingOverlay();
      }
    }
  }

  void _saveDataToLocal(BaseResponse baseResponse) {
    APP_DATA.put(AppConst.keyUserName, codeBHXH.text);
    APP_DATA.put(AppConst.keyUrlBaseImage, baseResponse.extend?.cdnUrl);
    APP_DATA.put(AppConst.keyUserpassword, password.text);
  }
}
