import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class SupportItem extends StatelessWidget {
  const SupportItem({
    super.key,
    required this.item,
  });

  final SupportComponentItemModel item;

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      elevation: 0,
      onTap: item.function,
      paddingModel: const PaddingModel(
          paddingVerical: AppDimens.paddingVerySmall,
          paddingHorizontal: AppDimens.defaultPadding),
      backgroundColor: Colors.blue.withOpacity(0.05),
      child: Row(
        children: [
          CardBuilder(
            height: 50.h,
            width: 50.h,
            backgroundColor: Colors.transparent,
            paddingModel:
                const PaddingModel(paddingAll: AppDimens.paddingVerySmall),
            radiusModel: const RadiusModel(radiusAll: 50),
            isBorder: true,
            borderColor: context.onSurfaceColor,
            child: Icon(
              item.iconData,
            ),
          ),
          UtilWidget.sizedBoxWidthPadding,
          TextBuild(
            title: item.content.toUpperCase(),
            fontSize: AppDimens.sizeTextLarge,
          )
        ],
      ),
    );
  }
}
