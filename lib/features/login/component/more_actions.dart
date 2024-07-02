import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';

class MoreAction extends StatelessWidget {
  const MoreAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              _buildIcon(context, Iconsax.book),
              _buildIcon(context, Iconsax.call_calling),
              _buildIcon(context, Iconsax.global_search),
              _buildIcon(context, Iconsax.video_square),
            ],
          ),
        ),
        _buildIcon(context, Icons.location_on_outlined)
      ],
    );
  }

  Widget _buildIcon(BuildContext context, IconData iconData) {
    return Icon(
      iconData,
      size: AppDimens.sizeIconMedium,
      color: context.primaryColor,
      // color: context.onSurfaceColor,
    ).paddingSymmetric(horizontal: AppDimens.paddingSmall);
  }
}
