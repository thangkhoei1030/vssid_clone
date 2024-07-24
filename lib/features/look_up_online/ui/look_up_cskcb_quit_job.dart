import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import '../../src_feature.dart';

class LookUpCskcbQuitJob extends GetView<LookUpCSKCBBHYTController> {
  const LookUpCskcbQuitJob({super.key});

  @override
  LookUpCSKCBBHYTController get controller =>
      Get.put(LookUpCSKCBBHYTController());
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      showAppBar: true,
      customAppBar: UtilWidget.customAppBar(
        context,
        leading: SimpleButton(
          onPressed: () {
            Get.back();
          },
          child: UtilWidget.appBarIcon(Icons.arrow_back_ios_new),
        ),
        title: TextBuild(
          title: LookUpOnlineString.lookUpCSKCBQuitJob,
          fontSize: AppDimens.sizeTextLarge,
          textColor: Colors.white,
          isAutoSizeText: true,
        ),
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
