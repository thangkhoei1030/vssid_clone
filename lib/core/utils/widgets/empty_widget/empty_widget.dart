import 'package:flutter/material.dart';
import 'package:vssid/core/src_core.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    this.message,
    this.textAlign = TextAlign.center,
    this.alignment = Alignment.center,
    this.onReaload,
    this.colorsButton,
    this.fontSize,
  });

  final String? message;

  final TextAlign textAlign;

  final Alignment alignment;

  final double? fontSize;

  final Function()? onReaload;

  final Color? colorsButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        UtilWidget.sizedBox10,
        //TODO
        // Lottie.asset(
        //   AnimationAsset.emptyAnimation,
        //   frameRate: FrameRate(60),
        // ),
        UtilWidget.sizedBox10,
        TextBuild(
          title: message ?? AppStr.noData,
          textAlign: textAlign,
          fontSize: fontSize ?? AppDimens.sizeTextSmall,
        ),
        UtilWidget.sizedBox10,
        if (onReaload != null)
          BaseButton(
            function: () => onReaload?.call(),
            titleButton: AppStr.reload,
            backgroundColor: colorsButton,
          ),
      ],
    );
  }
}
