import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

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
      paddingModel: PaddingModel(
        paddingVerical: AppDimens.paddingVerySmall.ratioH,
        paddingHorizontal: AppDimens.defaultPadding.ratioW,
      ),
      linearGradient: const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color.fromRGBO(229, 233, 235, 1),
          Color.fromRGBO(224, 228, 230, 1),
        ],
      ),
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(224, 228, 230, 1),
          offset: Offset(1, 1),
          blurRadius: 4,
        ),
        BoxShadow(
          color: Color.fromRGBO(209, 208, 209, 1),
          offset: Offset(1, 1),
          blurRadius: 4,
        ),
      ],
      child: Row(
        children: [
          item.image != null
              ? item.image!.image(
                  height: 45.ratioH,
                )
              : CardBuilder(
                  height: 45.ratioH,
                  width: 45.ratioW,
                  backgroundColor: Colors.transparent,
                  paddingModel: const PaddingModel(
                      paddingAll: AppDimens.paddingVerySmall),
                  radiusModel: const RadiusModel(radiusAll: 50),
                  isBorder: true,
                  borderColor: context.onSurfaceColor,
                  child: item.pathSVG != null
                      ? item.pathSVG!.svg()
                      : Icon(
                          item.iconData,
                          color: context.onSurfaceColor,
                          size: AppDimens.sizeIconMedium,
                        ),
                ),
          UtilWidget.sizedBoxWidthPadding,
          Expanded(
            child: TextBuild(
              textAlign: TextAlign.start,
              isAutoSizeText: true,
              title: item.content.toUpperCase(),
              fontSize: AppDimens.sizeTextLarge,
            ),
          )
        ],
      ),
    );
  }
}
