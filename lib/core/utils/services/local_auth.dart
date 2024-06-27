import 'dart:developer';
// import 'package:local_auth_darwin/local_auth_darwin.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:vssid/core/src_core.dart';

class AppLocalAuth {
  static AppLocalAuth? _instance;

  factory AppLocalAuth() => _instance ??= AppLocalAuth._();

  AppLocalAuth._();

  static const String unlockWithBiometrics = "Mở khoá bằng vân tay";

  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> get canAuthenticateWithBiometrics async =>
      await auth.canCheckBiometrics;

  Future<bool> get canAuthenticate async =>
      await canAuthenticateWithBiometrics || await auth.isDeviceSupported();

  Future<void> authenticate(
      {Function()? availableFunction, Function()? notAvailableFunction}) async {
    final List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();
    if (availableBiometrics.isEmpty) {
      notAvailableFunction?.call();
      return;
    }
    if (availableBiometrics.contains(BiometricType.strong) ||
        availableBiometrics.contains(BiometricType.fingerprint)) {
      try {
        final bool didAuthenticate = await auth.authenticate(
          authMessages: const [
            androidAuthMessage,
          ],
          localizedReason:
              "Chúng tôi cần dấu vân tay của bạn để có thể đăng nhập",
          options: const AuthenticationOptions(
            biometricOnly: true,
          ),
        );
        if (didAuthenticate) {
          availableFunction?.call();
        }
      } on PlatformException catch (e) {
        showToast(authError[e.code] ?? "", toastStatus: ToastStatus.error);
      }
    }
  }

  static const AndroidAuthMessages androidAuthMessage = AndroidAuthMessages(
    signInTitle: 'Xác nhận vân tay',
    biometricSuccess: "Đăng nhập thành công",
    cancelButton: 'Trở lại',
    biometricHint: "Đăng nhập bằng vân tay",
    biometricRequiredTitle:
        "Vui lòng đặt tay vào phần cảm biến vân tay trên thiết bị của bạn",
  );

  static const Map<String, String> authError = {
    auth_error.notEnrolled: "Bạn chưa đăng kí vân tay trên thiết bị này",
    auth_error.notAvailable: "Thiết bị của bạn không hỗ trợ tính năng này",
    auth_error.lockedOut:
        "Bạn đã nhập quá số lần cho phép. Vui lòng thử lại sau",
    auth_error.permanentlyLockedOut: "Có lỗi xảy ra",
  };
}
