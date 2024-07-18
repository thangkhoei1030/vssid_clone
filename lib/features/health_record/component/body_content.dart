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
                child: TextBuild(
                  isBoldText: true,
                  title: controller.yearSelected.value.toString(),
                  textColor: context.onSurfaceColor,
                  decoration: TextDecoration.underline,
                ),
              ),
              UtilWidget.sizedBoxPadding,
              Obx(
                () => Table(
                  border: TableBorder.all(color: Colors.white),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: tabType.columnWidth,
                  children: [
                    TableRow(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(56, 101, 155, 1)),
                        children: [
                          if (tabType.getColumnView().ngayvao)
                            _buildCeil(
                              TextBuild(
                                isAutoSizeText: true,
                                title: HealthRecordStr.ngayvao,
                                textColor: Colors.white,
                                maxLines: 5,
                                fontSize: AppDimens.sizeTextSmall,
                              ),
                            ),
                          if (tabType.getColumnView().ngayra)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.ngayra,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextSmall,
                              ),
                            ),
                          if (tabType.getColumnView().tenbenh)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.tenbenh,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextSmall,
                              ),
                            ),
                          if (tabType.getColumnView().soseri)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.seriNumber,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextSmall,
                              ),
                            ),
                          if (tabType.getColumnView().loaichungtu)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.loaichungtu,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextSmall,
                              ),
                            ),
                          if (tabType.getColumnView().ngaycap)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.ngaycap,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextSmall,
                              ),
                            ),
                          if (tabType.getColumnView().trangthai)
                            _buildCeil(
                              TextBuild(
                                title: HealthRecordStr.trangthai,
                                textColor: Colors.white,
                                fontSize: AppDimens.sizeTextSmall,
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
                            child: const Icon(Icons.remove_red_eye))
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
    return child.paddingAll(AppDimens.paddingSmall);
  }
}
