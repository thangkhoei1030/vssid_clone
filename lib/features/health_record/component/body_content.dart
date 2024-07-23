import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/pages/src_pages.dart';

class BodyContent<T extends HealthRecordTabController> extends GetView<T>
    with GetViewLoading {
  final HealthRecordTabType tabType;

  const BodyContent.lichsu({
    super.key,
  }) : tabType = HealthRecordTabType.history;

  const BodyContent.giaycap({
    super.key,
  }) : tabType = HealthRecordTabType.giaycap;

  @override
  Widget build(BuildContext context) {
    return BuildSmartRefreshWidget(
      controller: controller,
      enablePullDown: true,
      child: loadingWidget(
        isShowLoading: controller.isShowLoading,
        child: () => SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextBuild(
                      isBoldText: true,
                      title: controller.yearSelected.value.toString(),
                      style: Get.textTheme.bodySmall!.copyWith(
                        color: AppColors.onSurfaceColor2,
                        decoration: TextDecoration.underline,
                        decorationThickness: 0.5,
                        fontSize: AppDimens.sizeTextMedium,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_drop_down,
                        size: AppDimens.sizeIconMedium,
                      ),
                    )
                  ],
                ),
              ),
              UtilWidget.sizedBoxPadding,
              Obx(
                () => Table(
                  border: TableBorder.all(
                    color: Colors.white,
                    width: 0.5,
                  ),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: tabType.columnWidth,
                  children: [
                    TableRow(
                        decoration: const BoxDecoration(
                          color: AppColors.onSurfaceColor2,
                        ),
                        children: [
                          if (tabType.getColumnView().ngayvao)
                            _buildCeil(
                              TextBuild(
                                isAutoSizeText: true,
                                title: HealthRecordStr.ngayvao,
                                textColor: Colors.white,
                                maxLines: 5,
                                fontSize: AppDimens.sizeTextDefault,
                              ),
                            ),
                          if (tabType.getColumnView().ngayra)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.ngayra,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextDefault,
                              ),
                            ),
                          if (tabType.getColumnView().tenbenh)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.tenbenh,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextDefault,
                              ),
                            ),
                          if (tabType.getColumnView().soseri)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.seriNumber,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextDefault,
                              ),
                            ),
                          if (tabType.getColumnView().loaichungtu)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.loaichungtu,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextDefault,
                              ),
                            ),
                          if (tabType.getColumnView().ngaycap)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.ngaycap,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextDefault,
                              ),
                            ),
                          if (tabType.getColumnView().trangthai)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.trangthai,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextDefault,
                              ),
                            ),
                          const SizedBox.shrink(),
                        ]),
                    for (HealthRecordItem item in controller.listResponse.value)
                      TableRow(children: [
                        if (tabType.getColumnView().ngayvao)
                          _buildCeil(
                            TextBuild(
                              title: item.ngayVao ?? "",
                            ),
                          ),
                        if (tabType.getColumnView().ngayra)
                          _buildCeil(
                            TextBuild(
                              title: item.ngayRa ?? "",
                            ),
                          ),
                        if (tabType.getColumnView().tenbenh)
                          _buildCeil(
                            TextBuild(
                              title: item.tenBenh ?? "",
                            ),
                          ),
                        if (tabType.getColumnView().soseri)
                          _buildCeil(
                            TextBuild(
                              title: item.soSeri ?? "",
                            ),
                          ),
                        if (tabType.getColumnView().loaichungtu)
                          _buildCeil(
                            TextBuild(
                              title: item.loaiChungTu ?? "",
                            ),
                          ),
                        if (tabType.getColumnView().ngaycap)
                          _buildCeil(
                            TextBuild(
                              title: item.ngayCap ?? "",
                            ),
                          ),
                        if (tabType.getColumnView().trangthai)
                          _buildCeil(
                            TextBuild(
                              title: item.trangThai ?? "",
                            ),
                          ),
                        SimpleButton(
                            onPressed: () => Get.toNamed(
                                  AppRoutes.healthRecordDetail,
                                  arguments: item.id.toString(),
                                ),
                            child: Icon(
                              Icons.remove_red_eye,
                              color: context.onSurfaceColor,
                            ))
                      ])
                  ],
                ),
              ),
            ],
          ).paddingAll(AppDimens.defaultPadding),
        ),
      ),
    );
  }

  Widget _buildCeil(Widget child) {
    return child.paddingSymmetric(
      horizontal: AppDimens.paddingSmallest,
      vertical: AppDimens.paddingVerySmall,
    );
  }
}
