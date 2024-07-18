import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class LoginButton extends GetView<LoginController> {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: CardBuilder(
                  onTap: () {
                    controller.login();
                  },
                  isBorder: true,
                  paddingModel: PaddingModel(
                    paddingVerical: AppDimens.paddingSmall.h,
                  ),
                  radiusModel: const RadiusModel(radiusAll: AppDimens.radius8),
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
                  size: AppDimens.sizeIconLarge,
                  color: context.primaryColor,
                ).paddingSymmetric(horizontal: AppDimens.paddingSmall),
              )
            ],
          ),
        ),
        UtilWidget.sizedBoxPadding,
        const VNEIDLoginButton(),
      ],
    );
  }
}
