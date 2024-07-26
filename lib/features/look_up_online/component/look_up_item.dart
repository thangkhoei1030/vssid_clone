import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/gen/assets.gen.dart';

class LookUpItem extends StatelessWidget {
  const LookUpItem({
    super.key,
    this.iconData,
    required this.serviceName,
    this.svg,
    this.function,
    this.image,
  });

  final IconData? iconData;

  final SvgGenImage? svg;

  final AssetGenImage? image;

  final String serviceName;

  final Function()? function;

  @override
  Widget build(BuildContext context) {
    return SimpleButton(
      onPressed: function,
      child: Column(
        children: [
          image != null
              ? image!.image(
                  height: 75.ratioH,
                  width: 75.ratioW,
                )
              : svg != null
                  ? svg!.svg(
                      height: 50.ratioH,
                      width: 50.ratioW,
                      color: context.onSurfaceColor)
                  : Icon(
                      iconData,
                      size: 50.ratioH,
                      color: context.onSurfaceColor,
                    ),
          UtilWidget.sizedBoxPadding,
          TextBuild(
            title: serviceName,
            textColor: context.onSurfaceColor,
          )
        ],
      ),
    ).paddingSymmetric(
        horizontal: AppDimens.paddingVerySmall,
        vertical: AppDimens.paddingSmall);
  }
}
