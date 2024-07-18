import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class UserInputComponent extends GetView<LoginController> {
  const UserInputComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          _buildInput(
            Iconsax.user,
            InputTextModel(
              controller: controller.codeBHXH,
              hintText: LoginStr.codeBHXH,
              validator: (value) => validateInput(
                nameField: LoginStr.codeBHXH,
                value: value,
              ),
            ),
          ),
          UtilWidget.sizedBoxPadding,
          _buildInput(
            Iconsax.key,
            InputTextModel(
              obscureText: true,
              controller: controller.password,
              hintText: LoginStr.password,
              validator: (value) => validateInput(
                nameField: LoginStr.password,
                value: value,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInput(IconData iconData, InputTextModel inputTextModel) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.paddingVerySmall),
            decoration: const BoxDecoration(color: Colors.blue),
            child: Icon(
              iconData,
              color: Colors.white,
              size: AppDimens.sizeIconMedium,
            ),
          ),
          Expanded(
              child: BuildInputText(
            inputTextModel,
          ))
        ],
      ),
    );
  }
}
