import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class UserInputComponent extends GetView<LoginController> {
  const UserInputComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          _buildInput(
            context,
            InputTextModel(
              controller: controller.codeBHXH,
              hintText: LoginStr.codeBHXH,
              validator: (value) => validateInput(
                nameField: LoginStr.codeBHXH,
                value: value,
              ),
            ),
            svg: Assets.svg.user,
          ),
          UtilWidget.sizedBoxPadding,
          _buildInput(
            context,
            InputTextModel(
              obscureText: true,
              controller: controller.password,
              hintText: LoginStr.password,
              validator: (value) => validateInput(
                nameField: LoginStr.password,
                value: value,
              ),
            ),
            iconData: Iconsax.key5,
          ),
        ],
      ),
    );
  }

  Widget _buildInput(
    BuildContext context,
    InputTextModel inputTextModel, {
    IconData? iconData,
    SvgGenImage? svg,
  }) {
    assert(svg == null || iconData == null, "Required svg or iconData");
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.paddingVerySmall),
            decoration: BoxDecoration(color: context.onSurfaceColor),
            child: iconData != null
                ? Icon(
                    iconData,
                    color: Colors.white,
                    size: AppDimens.sizeIconMedium,
                  )
                : svg!.svg(
                    color: Colors.white,
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
