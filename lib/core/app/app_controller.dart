import 'package:vssid/core/src_core.dart';
import 'package:vssid/pages/src_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
// import 'package:vssid/feature/src_feature.dart';

late final Box APP_DATA;

final GetStorage getStorage = GetStorage();

String path = '';

class AppController extends GetxController {
  final RxBool isLogin = false.obs;

  final RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    _initHive().then((value) async {
      await Future.delayed(const Duration(seconds: 3));
      isDarkMode.value = APP_DATA.get(AppConst.keyDarkMode) ?? false;
      Get.put(BaseRequest(), permanent: true);
      Get.put(BaseGetxController(), permanent: true);
      Get.offAllNamed(AppRoutes.loginPage);
    });

    super.onInit();
  }

  Future<void> _initHive() async {
    await _openBox();
  }

  Future<void> _openBox() async {
    final appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path + AppStr.appName);
    APP_DATA =
        await Hive.openBox(AppStr.appName, path: appDocumentDirectory.path);
  }
}
