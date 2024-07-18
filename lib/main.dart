import 'dart:io';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:vssid/pages/pages.dart';
import 'package:vssid/pages/routes.dart';
import 'core/src_core.dart';

String applicationPath = "";
final AppLocalAuth localAuth = AppLocalAuth();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  applicationPath =
      (await path_provider.getApplicationDocumentsDirectory()).path;
  if (Platform.isIOS) {
    showBarNotificationIOS();
  }
  _errorWidgetBuilder();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

void showBarNotificationIOS() {
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
  );
}

void _errorWidgetBuilder() {
  ErrorWidget.builder = (details) {
    return CardBuilder(
      height: 200,
      radiusModel: const RadiusModel(radiusAll: AppDimens.radius8),
      backgroundColor: Colors.red.withOpacity(0.01),
      paddingModel: const PaddingModel(
        paddingHorizontal: AppDimens.defaultPadding,
        paddingVerical: AppDimens.paddingSmall,
      ),
      child: TextBuild(
        title: details.exception.toString(),
      ),
    );
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: ScreenUtilInit(
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(430, 932),
        builder: (context, child) => GetMaterialApp(
          locale: DevicePreview.locale(context),
          // locale: const Locale('vi', 'VN'),
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashPage,
          getPages: PageRoutes.pageRoutes,
          useInheritedMediaQuery: false,
          builder: DevicePreview.appBuilder,
          // builder: (context, child) => ScrollConfiguration(
          //   behavior: MyBehavior(),
          //   child: MediaQuery(
          //     data:
          //         MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          //     child: GestureDetector(
          //         onTap: () {
          //           FocusManager.instance.primaryFocus?.unfocus();
          //         },
          //         child: child ?? Container()),
          //   ),
          // ),
          title: AppStr.appName,
          theme: AppTheme().getThemeByAppTheme(),
          navigatorObservers: [
            NavigatorObservers(),
          ],
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class NavigatorObservers extends GetObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    // dateTime = DateTime.now();
  }
}
