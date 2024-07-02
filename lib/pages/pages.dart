import 'package:animations/animations.dart';
import 'package:vssid/features/health_record/controller/bindings.dart';
import 'package:vssid/features/src_feature.dart';
// import 'package:vssid/feature/src_feature.dart';
import 'package:vssid/pages/src_pages.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageRoutes {
  static Future<void> navigator<T>({
    required Widget page,
    Function(T?)? functionResult,
    bool preventDuplicates = true,
    dynamic arguments,
  }) async {
    Get.to<T?>(
      () => page,
      arguments: arguments,
      preventDuplicates: preventDuplicates,
    )?.then((value) => functionResult?.call(value));
  }

  static void backMultiScreen(String routeBack) async {
    Get.until((route) => Get.currentRoute == routeBack);
  }

  static List<GetPage> pageRoutes = [
    GetPage(
      name: AppRoutes.splashPage,
      page: () => const SplashPage(),
      //transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.loginPage,
      page: () => const LoginPage(),
      binding: LoginControllerBindings(),
    ),
    GetPage(
      name: AppRoutes.pageBuilder,
      page: () => const PageBuilder(),
      bindings: [
        PageBuilderBindings(),
        ProfileManageBindings(),
        LookUpOnlineBindings(),
        SupportControllerBindings(),
      ],
    ),
    GetPage(
      name: AppRoutes.healthInsuranceCard,
      page: () => const HealthInsuranceCardPage(),
      binding: HealthInsuranceCardBindings(),
    ),
    GetPage(
      name: AppRoutes.participationProcess,
      page: () => const ParticipationProcessPage(),
      binding: ParticipationProcessBindings(),
    ),
    GetPage(
      name: AppRoutes.benefitInfomation,
      page: () => const BenefitInfomationPage(),
      binding: BenefitInfomationBindings(),
    ),
    GetPage(
      name: AppRoutes.processDetail,
      page: () => const ProcessDetailPage(),
    ),
    GetPage(
      name: AppRoutes.healthRecord,
      page: () => const HealthRecordPage(),
      binding: HealthRecordControllerBindings(),
    ),
    GetPage(
      name: AppRoutes.setting,
      page: () => const SettingPage(),
    ),
  ];
}

class PageTransitionSwitcher extends CustomTransition {
  @override
  Widget buildTransition(
    BuildContext context,
    Curve? curve,
    Alignment? alignment,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeThroughTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      fillColor: Theme.of(context).colorScheme.surface,
      child: child,
    );
  }
}
