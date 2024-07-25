import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ForgotAndRegisterButton extends StatelessWidget {
  const ForgotAndRegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextBuild(
          function: () {
            Get.bottomSheet(
              isScrollControlled: true,
              isDismissible: true,
              enableDrag: false,
              const ForgotPassword(),
            );
          },
          title: LoginStr.forgotPassword,
          textColor: context.onSurfaceColor,
        ),
        TextBuild(
          function: () {
            // Get.bottomSheet(
            //   isScrollControlled: true,
            //   isDismissible: true,
            //   enableDrag: false,
            //   const ForgotPassword(),
            // );
          },
          title: LoginStr.register,
          textColor: context.onSurfaceColor,
        ),
      ],
    );
  }
}
