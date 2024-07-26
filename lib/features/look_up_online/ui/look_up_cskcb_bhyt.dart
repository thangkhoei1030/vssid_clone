import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import '../../src_feature.dart';

class LookUpCskcbBhyt extends GetView<LookUpCSKCBBHYTController> {
  const LookUpCskcbBhyt({super.key});

  @override
  LookUpCSKCBBHYTController get controller =>
      Get.put(LookUpCSKCBBHYTController());
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      showAppBar: true,
      customAppBar: lookUpAppBar(
        context,
        LookUpOnlineString.lookUpCSKCBHeadling.toUpperCase(),
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
                  hintText: LookUpOnlineString.selectDistrict,
                  lable: LookUpOnlineString.district,
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
