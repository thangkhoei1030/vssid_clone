import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';

PreferredSize lookUpAppBar(
  BuildContext context,
  String title,
) {
  return UtilWidget.customAppBar(
    context,
    leading: SimpleButton(
      onPressed: () {
        Get.back();
      },
      child: UtilWidget.appBarIcon(Icons.arrow_back_ios_new),
    ),
    title: TextBuild(
      title: title.toUpperCase(),
      fontSize: AppDimens.sizeTextLarge,
      textColor: Colors.white,
      isAutoSizeText: true,
    ),
  );
}
