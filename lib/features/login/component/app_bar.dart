import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/gen/assets.gen.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.images.srcImagesTb3.image(
          height: AppDimens.sizeIconMedium,
          width: AppDimens.sizeIconMedium,
        ),
        const Spacer(),
        Assets.images.srcImagesVn.image(
          height: AppDimens.sizeIconMedium,
          width: AppDimens.sizeIconMedium,
        ),
      ],
    );
  }
}
