import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Iconsax.notification_bing,
          color: context.primaryColor,
          size: AppDimens.sizeIconLarge,
        ),
        const Spacer(),
        Icon(
          Iconsax.language_circle,
          color: context.primaryColor,
          size: AppDimens.sizeIconLarge,
        )
      ],
    );
  }
}
