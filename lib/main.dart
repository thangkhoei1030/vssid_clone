import 'dart:io';
import 'dart:math';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:vssid/pages/src_pages.dart';
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
      enabled: false,
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
        maxLines: 5,
      ),
    );
  };
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: ScreenUtilInit(
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(430, 932),
        builder: (_, child) => GetMaterialApp(
          // locale: DevicePreview.locale(context),
          // locale: const Locale('vi', 'VN'),
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashPage,
          getPages: PageRoutes.pageRoutes,
          useInheritedMediaQuery: false,
          home: WillPopScope(
            onWillPop: () async =>
                await _navigatorKey.currentState?.maybePop() ?? false,
            child: LayoutBuilder(
              builder: (context, contrains) {
                return Navigator(
                  key: _navigatorKey,
                  onGenerateRoute: (RouteSettings settings) {
                    switch (settings.name) {
                      case '/':
                        return MaterialPageRoute(
                            builder: (_) => const SplashPage());
                      default:
                        return MaterialPageRoute(
                          builder: (_) => SplashPage(
                            key: _navigatorKey,
                          ),
                        );
                    }
                  },
                );
              },
            ),
          ),
          builder: (context, child) => ScrollConfiguration(
            behavior: MyBehavior(),
            child: MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
              child: GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: child ?? const SplashPage(),
              ),
            ),
          ),
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

class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 1}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
