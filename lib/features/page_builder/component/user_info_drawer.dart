import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class UserInfoDrawer extends GetView<PageBuilderController> {
  const UserInfoDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UtilWidget.sizedBoxPaddingHuge,
        CardBuilder(
          width: 75.w,
          height: 75.h,
          radiusModel: const RadiusModel(radiusAll: 50),
          child: Icon(
            Icons.account_circle_sharp,
            size: 75,
            color: context.onSurfaceColor,
          ),
        ),
        UtilWidget.sizedBoxPadding,
        TextBuild(
          title: "Ngo Quang Thang ",
          textColor: Colors.white,
          fontSize: AppDimens.sizeTextMedium,
        ),
        UtilWidget.sizedBoxPadding,
        TextBuild(
          title: "0126078914",
          textColor: Colors.white,
          fontSize: AppDimens.sizeTextMedium,
        ),
      ],
    );
  }
}
