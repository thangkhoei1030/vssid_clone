import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class SelectDialog extends StatelessWidget {
  const SelectDialog(
      {super.key,
      this.valueSelected,
      this.lable,
      this.hintText,
      required this.showListOptionsDialog});

  final dynamic valueSelected;

  final String? lable;

  final String? hintText;

  final Function() showListOptionsDialog;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (lable != null) ...[
          TextBuild(
            title: lable ?? "",
          ),
          UtilWidget.sizedBox10,
        ],
        CardBuilder(
          onTap: showListOptionsDialog,
          radiusModel: const RadiusModel(radiusAll: AppDimens.radius8),
          paddingModel: const PaddingModel(
            paddingHorizontal: AppDimens.defaultPadding,
            paddingVerical: AppDimens.paddingSmall,
          ),
          isBorder: true,
          alignment: Alignment.centerLeft,
          borderColor: Colors.black.withOpacity(0.5),
          child: TextBuild(
            title: valueSelected ?? hintText ?? "",
            textColor: context.onSurfaceColor,
          ),
        ),
      ],
    );
  }
}
