import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class EmailInputComponent extends GetView<ForgotPasswordController> {
  const EmailInputComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.paddingVerySmall),
            decoration: const BoxDecoration(color: Colors.blue),
            child: Icon(
              Icons.email,
              color: Colors.white,
              size: AppDimens.sizeIconLarge,
            ),
          ),
          Expanded(
            child: BuildInputText(
              InputTextModel(
                controller: controller.email,
                hintText: ForgotPasswordString.email,
              ),
            ),
          )
        ],
      ),
    );
  }
}
