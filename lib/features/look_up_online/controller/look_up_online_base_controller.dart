import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';

abstract class LookUpOnlineController extends BaseGetxController {
  late final LookUpOnlineRepository lookUpOnlineRepository =
      LookUpOnlineRepository(this);

  final Rx<Map<String, String>?> cityIdSelected = Rxn();

  final Rx<Map<String, String>?> provinceSelected = Rxn();

  final RxMap<String, String> mapCity = RxMap();

  final RxMap<String, String> mapProvince = RxMap();

  Future<void> getCity() async {
    try {
      showLoading();
      await lookUpOnlineRepository.getCity().then((value) {
        if (value.data != null) {
          mapCity.value = value.data!;
        }
      });
    } finally {
      hideLoading();
    }
  }

  void selecteCityId() {
    getCity();
    Get.bottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        enableDrag: false,
        LookUpBottomSheetBuilder(
          widget: () => Obx(
            () => isShowLoading.isTrue
                ? UtilWidget.buildLoading
                : SimpleListView(
                    fillScreenEmpty: false,
                    separatorWidget: UtilWidget.buildDivider(),
                    data: mapCity.value.values.toList(),
                    itemBuilder: (_, index) {
                      return SimpleButton(
                        onPressed: () => Get.back(
                            result: Map<String, String>.from({
                          mapCity.keys.toList()[index]:
                              mapCity.values.toList()[index]
                        })),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: TextBuild(
                            title: mapCity.value.values.toList()[index],
                          ),
                        ).paddingSymmetric(vertical: AppDimens.paddingSmall),
                      );
                    },
                  ),
          ),
        )).then((value) {
      if (value != null) {
        cityIdSelected.value = value;
      }
    });
  }

  void getProvinceId() {
    if (cityIdSelected.value == null) {
      showToast(
        LookUpOnlineString.pleaseSelectCityId,
        toastStatus: ToastStatus.warning,
        textColor: Colors.black,
      );
      return;
    }
    getProvince();
    Get.bottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        enableDrag: false,
        LookUpBottomSheetBuilder(
          widget: () => Obx(
            () => isShowLoading.isTrue
                ? UtilWidget.buildLoading
                : SimpleListView(
                    separatorWidget: UtilWidget.buildDivider(),
                    data: mapProvince.value.values.toList(),
                    fillScreenEmpty: false,
                    itemBuilder: (_, index) {
                      return SimpleButton(
                        onPressed: () => Get.back(
                            result: Map<String, String>.from({
                          mapProvince.keys.toList()[index]:
                              mapProvince.values.toList()[index]
                        })),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: TextBuild(
                            title: mapProvince.value.values.toList()[index],
                          ),
                        ).paddingSymmetric(vertical: AppDimens.paddingSmall),
                      );
                    },
                  ),
          ),
        )).then((value) {
      if (value != null) {
        provinceSelected.value = value;
      }
    });
  }

  Future<void> getProvince() async {
    try {
      showLoading();
      await lookUpOnlineRepository
          .getProvince(cityIdSelected.value!.keys.first)
          .then((value) {
        if (value.data != null) {
          mapProvince.value = value.data!;
        }
      });
    } finally {
      hideLoading();
    }
  }

  void search();
}
