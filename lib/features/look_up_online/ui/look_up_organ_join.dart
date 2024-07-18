import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import '../../src_feature.dart';

class LookUpOrganJoin extends GetView<LookUpOrganJoinController> {
  const LookUpOrganJoin({super.key});

  @override
  LookUpOrganJoinController get controller =>
      Get.put(LookUpOrganJoinController());
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      showAppBar: true,
      title: TextBuild(
        title: LookUpOnlineString.lookUpMemberJoinBHXH,
        fontSize: AppDimens.sizeTextLarge,
        textColor: Colors.white,
        isAutoSizeText: true,
      ),
      showBackButton: true,
      child: SingleChildScrollView(
        child: Obx(() => Column(
              children: [
                SelectDialog(
                  valueSelected: controller.cityIdSelected.value?.values.first,
                  showListOptionsDialog: controller.selecteCityId,
                  hintText: LookUpOnlineString.selectProvince,
                  lable: LookUpOnlineString.provinceAndCity,
                ),
                UtilWidget.sizedBoxPadding,
                SelectDialog(
                  valueSelected:
                      controller.provinceSelected.value?.values.first,
                  showListOptionsDialog: controller.getProvinceId,
                  hintText: LookUpOnlineString.selectOrganBHXH,
                  lable: LookUpOnlineString.organBHXH,
                ),
                UtilWidget.sizedBoxPadding,
                TextFormField(
                  controller: controller.codeOrgan,
                  decoration: const InputDecoration(
                      label: TextBuild(title: LookUpOnlineString.codeOrgan),
                      suffixIcon: Icon(Icons.edit)),
                  cursorColor: context.onSurfaceColor,
                ),
                UtilWidget.sizedBoxPadding,
                TextFormField(
                  controller: controller.nameOrgan,
                  decoration: const InputDecoration(
                      label: TextBuild(title: LookUpOnlineString.nameOrgan),
                      suffixIcon: Icon(Icons.edit)),
                  cursorColor: context.onSurfaceColor,
                ),
                UtilWidget.sizedBoxPadding,
                CardBuilder(
                    borderColor: context.onSurfaceColor,
                    isBorder: true,
                    radiusModel:
                        const RadiusModel(radiusAll: AppDimens.radius8),
                    paddingModel: const PaddingModel(
                      paddingHorizontal: AppDimens.defaultPadding,
                      paddingVerical: AppDimens.paddingSmall,
                    ),
                    onTap: () => controller.search(),
                    child: const TextBuild(
                      title: LookUpOnlineString.search,
                    )),
              ],
            ).paddingAll(AppDimens.defaultPadding)),
      ),
    );
  }
}
