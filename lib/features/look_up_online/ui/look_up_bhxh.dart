import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class LookUpBHXH extends GetView<LookUpBHXHController> {
  const LookUpBHXH({super.key});

  @override
  LookUpBHXHController get controller => Get.put(LookUpBHXHController());

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
        showAppBar: true,
        title: TextBuild(
          title: LookUpOnlineString.lookUpCodeBHXH,
          fontSize: AppDimens.sizeTextLarge,
          isBoldText: true,
        ),
        showBackButton: true,
        child: SingleChildScrollView(
          child: Obx(
            () => Column(
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
                      suffixIcon: Icon(Icons.edit)),
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
                    ))
              ],
            ).paddingAll(AppDimens.defaultPadding),
          ),
        ));
  }
}
