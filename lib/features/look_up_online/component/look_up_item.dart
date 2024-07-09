import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class LookUpItem extends StatelessWidget {
  const LookUpItem(
      {super.key,
      this.iconData,
      required this.serviceName,
      this.svg,
      this.function});

  final IconData? iconData;

  final SvgGenImage? svg;

  final String serviceName;

  final Function()? function;

  @override
  Widget build(BuildContext context) {
    return SimpleButton(
      onPressed: function,
      child: Column(
        children: [
          CardBuilder(
            paddingModel:
                const PaddingModel(paddingAll: AppDimens.paddingVerySmall),
            height: 75.h,
            width: 75.w,
            radiusModel: const RadiusModel(radiusAll: 50),
            isBorder: true,
            borderColor: context.onSurfaceColor,
            child: svg != null
                ? svg!.svg(height: 50, width: 50, color: context.onSurfaceColor)
                : Icon(
                    iconData,
                    size: 50,
                    color: context.onSurfaceColor,
                  ),
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
