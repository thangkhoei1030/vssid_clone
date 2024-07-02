import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class LoginPage extends BaseGetWidget<LoginController> {
  const LoginPage({super.key});

  @override
  Widget buildWidgets(BuildContext context) {
    return LoadingOverlayWidget(
      isLoadingPage: true,
      child: PageScaffold(
        showAppBar: false,
        child: Stack(
          children: [
            Assets.images.loginBackgroundImage2.image(
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity),
            Column(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    UtilWidget.sizedBoxPaddingHuge,
                    const LoginAppBar(),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                )),
                UtilWidget.sizedBoxPaddingHuge,
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const UserInputComponent(),
                        UtilWidget.sizedBoxPadding,
                        const ForgotAndRegisterButton(),
                        UtilWidget.sizedBoxPaddingHuge,
                        const LoginButton(),
                        UtilWidget.sizedBoxPaddingMedium,
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: MoreAction(),
                )
              ],
            ).paddingAll(
              AppDimens.defaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}
