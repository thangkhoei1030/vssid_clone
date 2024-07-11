import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class HealthRecordDetailPage extends BaseGetWidget<HealthRecordDetailController>
    with GetViewLoading {
  const HealthRecordDetailPage({super.key});
  @override
  Widget buildWidgets(BuildContext context) {
    return PageScaffold(
      title: TextBuild(
        title: HealthRecordDetailStr.healthRecord,
        fontSize: AppDimens.sizeTextLarge,
      ),
      showBackButton: true,
      backgroundColor: context.primaryColor,
      child: loadingWidget(
        child: () => Obx(
          () => SimpleListView(
            separatorWidget: UtilWidget.sizedBoxPadding,
            data: controller.heathRecordDetail.value?.details ?? [],
            itemBuilder: (_, index) {
              final _item = controller.heathRecordDetail.value!.details[index];
              return CardBuilder(
                  backgroundColor: context.primaryColor,
                  radiusModel: const RadiusModel(
                    radiusAll: AppDimens.radius8,
                  ),
                  paddingModel: const PaddingModel(
                    paddingHorizontal: AppDimens.defaultPadding,
                    paddingVerical: AppDimens.paddingSmall,
                  ),
                  child: Column(
                    children: [
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.machiphi,
                        _item.healthId?.toString() ?? "",
                        textColor: context.onPrimaryColor,
                      ),
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.tenchiphi,
                        _item.tenChiPhi ?? "",
                        textColor: context.onPrimaryColor,
                      ),
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.donvitinh,
                        _item.donViTinh ?? "",
                        textColor: context.onPrimaryColor,
                      ),
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.soluong,
                        CurrencyUtils.formatCurrencyForeign(_item.soLuong),
                        textColor: context.onPrimaryColor,
                      ),
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.dongia,
                        CurrencyUtils.formatCurrencyForeign(_item.donGia),
                        textColor: context.onPrimaryColor,
                      ),
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.muchuong,
                        CurrencyUtils.formatCurrencyForeign(_item.mucHuong),
                        textColor: context.onPrimaryColor,
                      ),
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.thanhtien,
                        CurrencyUtils.formatCurrencyForeign(_item.thanhTien),
                        textColor: context.onPrimaryColor,
                      ),
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.bhytTT,
                        CurrencyUtils.formatCurrencyForeign(
                          _item.bhThanhToan,
                        ),
                        textColor: context.onPrimaryColor,
                      ),
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.nguonkhac,
                        _item.nguonKhac ?? "",
                        textColor: context.onPrimaryColor,
                      ),
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.BNTutra,
                        CurrencyUtils.formatCurrencyForeign(_item.bnTuTra),
                        textColor: context.onPrimaryColor,
                      ),
                      UtilWidget.rowInfo(
                        HealthRecordDetailStr.BNCungchitra,
                        CurrencyUtils.formatCurrencyForeign(_item.bnCungChiTra),
                        textColor: context.onPrimaryColor,
                      ),
                    ],
                  )).paddingSymmetric(vertical: AppDimens.defaultPadding);
            },
          ),
        ),
        isShowLoading: controller.isShowLoading,
      ),
    );
  }
}
