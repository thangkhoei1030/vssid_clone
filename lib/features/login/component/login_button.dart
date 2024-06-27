import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class LoginButton extends GetView<LoginController> {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: CardBuilder(
              onTap: () {
                controller.login();
              },
              isBorder: true,
              paddingModel:
                  const PaddingModel(paddingVerical: AppDimens.paddingSmall),
              borderColor: context.onSurfaceColor,
              child: TextBuild(
                title: LoginStr.login,
                textColor: context.onSurfaceColor,
                isBoldText: true,
              ),
            ),
          ),
          SimpleButton(
            onPressed: controller.biometricsLogin,
            child: Icon(
              Icons.fingerprint,
              size: AppDimens.sizeIconVeryLarge,
              color: context.onSurfaceColor,
            ).paddingSymmetric(horizontal: AppDimens.paddingSmall),
          )
        ],
      ),
    );
  }
}
