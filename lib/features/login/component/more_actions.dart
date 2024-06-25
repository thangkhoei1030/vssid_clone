import 'package:get/get.dart';
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
              _buildIcon(context, Icons.newspaper),
              _buildIcon(context, Icons.support_agent_outlined),
              _buildIcon(context, Icons.search),
              _buildIcon(context, Icons.video_settings_sharp),
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
      color: context.onSurfaceColor,
    ).paddingSymmetric(horizontal: AppDimens.paddingVerySmall);
  }
}
