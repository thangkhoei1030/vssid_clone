import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';

class LookUpBottomSheetBuilder extends StatelessWidget {
  const LookUpBottomSheetBuilder({super.key, required this.widget});

  final WidgetCallback widget;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.center,
        child: Container(
          width: Get.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                20,
              )),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Align(
              alignment: Alignment.topRight,
              child: SimpleButton(
                onPressed: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.close,
                ).paddingAll(AppDimens.defaultPadding),
              ),
            ),
            UtilWidget.sizedBoxPadding,
            Flexible(
              child: widget.call(),
            )
          ]).paddingSymmetric(
            horizontal: AppDimens.defaultPadding,
            vertical: AppDimens.paddingSmall,
          ),
        ).paddingAll(AppDimens.defaultPadding),
      )
    ]);
  }
}
