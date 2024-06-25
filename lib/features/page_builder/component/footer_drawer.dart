import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class FooterDrawer extends StatelessWidget {
  const FooterDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextBuild(
          title: PageBuilderString.version,
          fontSize: AppDimens.sizeTextMedium,
          textColor: Colors.white,
        ),
        UtilWidget.sizedBoxPadding,
        TextBuild(
          title: PageBuilderString.license,
          maxLines: 2,
          fontSize: AppDimens.sizeTextMedium,
          textAlign: TextAlign.start,
          textColor: Colors.white,
        ),
      ],
    );
  }
}
