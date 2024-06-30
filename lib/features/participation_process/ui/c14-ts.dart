import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vssid/core/utils/src_utils.dart';
import 'package:vssid/features/src_feature.dart';

class C14TS extends GetView<C14TSController> {
  const C14TS({super.key});

  @override
  C14TSController get controller => Get.put(C14TSController());

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      onTap: () {
        showToast("Chưa biết share gì ", toastStatus: ToastStatus.success);
      },
      alignment: Alignment.bottomRight,
      paddingModel: const PaddingModel(paddingAll: AppDimens.defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.share,
            color: context.onSurfaceColor,
          ),
          TextBuild(
            title: ParticipationProcessString.share,
            textColor: context.onSurfaceColor,
          )
        ],
      ),
    );
  }
}
