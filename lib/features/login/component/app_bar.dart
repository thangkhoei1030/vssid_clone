import 'package:flutter/material.dart';
import 'package:vssid/core/src_core.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.notifications_active,
          color: context.onPrimaryColor,
          size: AppDimens.sizeIconMedium,
        ),
        const Spacer(),
        Icon(
          Icons.flag,
          color: context.onPrimaryColor,
          size: AppDimens.sizeIconMedium,
        )
      ],
    );
  }
}
