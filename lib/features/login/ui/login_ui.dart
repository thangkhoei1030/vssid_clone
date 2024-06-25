import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class LoginPage extends BaseGetWidget<LoginController> {
  const LoginPage({super.key});

  @override
  Widget buildWidgets(BuildContext context) {
    return PageScaffold(
      child: Column(
        children: [
          const LoginAppBar(),
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  UserInputComponent(),
                  UtilWidget.sizedBoxPadding,
                  ForgotAndRegisterButton(),
                  UtilWidget.sizedBoxPadding,
                  LoginButton(),
                  UtilWidget.sizedBoxPaddingMedium,
                ],
              ),
            ),
          ),
          const MoreAction(),
        ],
      ).paddingAll(
        AppDimens.defaultPadding,
      ),
    );
  }
}
