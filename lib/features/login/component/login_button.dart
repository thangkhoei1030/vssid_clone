import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

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
                    paddingVerical: AppDimens.paddingSmall.ratioH,
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
                child: (Platform.isAndroid
                        ? Assets.images.srcImagesVantay
                        : Assets.images.srcImagesIconFace)
                    .image(
                      height: 40.ratioH,
                      width: 40.ratioW,
                    )
                    .paddingSymmetric(horizontal: AppDimens.paddingSmall),
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
