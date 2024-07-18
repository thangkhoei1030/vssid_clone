import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vssid/core/base_ui/base_ui_src.dart';
import 'package:vssid/core/utils/src_utils.dart';

import '../../src_feature.dart';

class LookUpOrganBHXH extends GetView<LookUpOrganBHXHController> {
  const LookUpOrganBHXH({super.key});

  @override
  LookUpOrganBHXHController get controller =>
      Get.put(LookUpOrganBHXHController());

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      showAppBar: true,
      title: TextBuild(
        title: LookUpOnlineString.lookUpOrganBHXH,
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
                TextFormField(
                  controller: controller.fullNameController,
                  decoration: const InputDecoration(
                    label: TextBuild(title: LookUpOnlineString.fullName),
                    suffixIcon: Icon(Icons.edit),
                  ),
                  cursorColor: context.onSurfaceColor,
                ),
                UtilWidget.sizedBoxPadding,
                SelectDialog(
                  valueSelected:
                      controller.provinceSelected.value?.values.first,
                  showListOptionsDialog: controller.getProvinceId,
                  hintText: LookUpOnlineString.provinceAndCity,
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
