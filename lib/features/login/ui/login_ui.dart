import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class LoginPage extends BaseGetWidget<LoginController> {
  const LoginPage({super.key});

  @override
  Widget buildWidgets(BuildContext context) {
    // print(Get.width);
    // print(Get.height);
    return LoadingOverlayWidget(
      isLoadingPage: true,
      child: PageScaffold(
        showAppBar: false,
        child: Stack(
          children: [
            Assets.images.loginBackgroundImage2.image(
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
            Column(
              children: [
                Column(
                  children: [
                    UtilWidget.sizedBoxPaddingHuge,
                    const LoginAppBar(),
                    UtilWidget.sizedBoxPaddingHuge,
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Assets.images.srcImagesNewLogo01.image(
                        height: 125.ratioH,
                        width: 125.ratioW,
                      ),
                    ),
                    UtilWidget.sizedBoxPaddingHuge,
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const UserInputComponent(),
                        UtilWidget.sizedBoxPadding,
                        const ForgotAndRegisterButton(),
                        UtilWidget.sizedBoxPadding,
                        const LoginButton(),
                        UtilWidget.sizedBoxPadding,
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: MoreAction(),
                )
              ],
            ).paddingSymmetric(
              vertical: AppDimens.paddingHuge,
              horizontal: AppDimens.defaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}
