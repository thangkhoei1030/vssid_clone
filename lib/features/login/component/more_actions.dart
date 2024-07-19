import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class MoreAction extends StatelessWidget {
  const MoreAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.center,
          child: TextBuild(
            title: LoginStr.openSettingVSSID,
            textColor: context.onSurfaceColor,
          ),
        ),
        UtilWidget.sizedBoxPadding,
        Align(
          alignment: Alignment.centerRight,
          child: TextBuild(
            title: LoginStr.privacy,
            textColor: context.onSurfaceColor,
          ),
        ),
        UtilWidget.sizedBoxPadding,
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  _buildIcon(context, iconData: Iconsax.book),
                  _buildIcon(
                    context,
                    image: Assets.images.srcImagesHotro1,
                  ),
                  _buildIcon(
                    context,
                    image: Assets.images.srcImagesTab4xanh,
                  ),
                  _buildIcon(context, iconData: Iconsax.video_square),
                ],
              ),
            ),
            _buildIcon(context, iconData: Icons.location_on_outlined)
          ],
        ),
      ],
    );
  }

  Widget _buildIcon(
    BuildContext context, {
    AssetGenImage? image,
    IconData? iconData,
  }) {
    return (image != null
            ? image.image(
                height: AppDimens.sizeIconMedium,
                width: AppDimens.sizeIconMedium,
              )
            : Icon(
                iconData,
                size: AppDimens.sizeIconMedium,
                color: context.onSurfaceColor,
                // color: context.onSurfaceColor,
              ))
        .paddingSymmetric(
      horizontal: AppDimens.paddingSmall.ratioW,
    );
  }
}
