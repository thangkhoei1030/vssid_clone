import 'package:data_table_2/data_table_2.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/pages/src_pages.dart';

class TableData extends GetView<ParticipationProcessController> {
  final TabProcessType tabType;

  const TableData.bhxh({super.key}) : tabType = TabProcessType.bhxh;

  const TableData.bhtn({super.key}) : tabType = TabProcessType.bhtn;

  const TableData.bhtnld({super.key}) : tabType = TabProcessType.bhtnld;

  const TableData.bhyt({super.key}) : tabType = TabProcessType.bhyt;

  TextStyle textStyleValue() => Get.textTheme.bodySmall!.copyWith(
        fontSize: AppDimens.sizeTextSmall,
        fontWeight: FontWeight.w300,
      );

  @override
  Widget build(BuildContext context) {
    return Table(
      // showBottomBorder: true,
      border: TableBorder.all(
        width: 0.1,
        color: AppColors.onSurfaceColor2,
      ),
      // columnSpacing: 10,]
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: tabType.columnWidth,
      // columnWidths: const {
      //   0: FractionColumnWidth(0.15),
      //   1: FractionColumnWidth(0.15),
      //   2: FractionColumnWidth(0.4),
      //   3: FractionColumnWidth(0.2),
      //   4: FractionColumnWidth(0.1)
      // },
      children: [
        TableRow(
            decoration: const BoxDecoration(
              color: AppColors.onSurfaceColor2,
            ),
            children: [
              if (tabType.getColumnView().fromDate)
                _buildCeil(
                  TextBuild(
                    isAutoSizeText: true,
                    fontSize: AppDimens.sizeTextSmall,
                    title: ParticipationProcessString.fromDate,
                    textColor: Colors.white,
                    maxLines: 5,
                  ),
                ),
              if (tabType.getColumnView().toDate)
                _buildCeil(
                  TextBuild(
                    title: ParticipationProcessString.toDate,
                    textColor: Colors.white,
                    fontSize: AppDimens.sizeTextSmall,
                  ),
                ),
              if (tabType.getColumnView().unit)
                _buildCeil(
                  TextBuild(
                    title: ParticipationProcessString.factory,
                    textColor: Colors.white,
                    fontSize: AppDimens.sizeTextSmall,
                  ),
                ),
              if (tabType.getColumnView().nameJob)
                _buildCeil(
                  TextBuild(
                    title: ParticipationProcessString.job,
                    textColor: Colors.white,
                    fontSize: AppDimens.sizeTextSmall,
                  ),
                ),
              const SizedBox.shrink(),
            ]),
        for (ProcessItemResponse item in controller.listProcess)
          TableRow(children: [
            if (tabType.getColumnView().fromDate)
              _buildCeil(
                TextBuild(
                  title: item.fromdate ?? "",
                  style: textStyleValue(),
                ),
              ),
            if (tabType.getColumnView().toDate)
              _buildCeil(
                TextBuild(
                  title: item.todate ?? "",
                  style: textStyleValue(),
                ),
              ),
            if (tabType.getColumnView().unit)
              _buildCeil(
                TextBuild(
                  title: item.workUnit ?? "",
                  style: textStyleValue(),
                ),
              ),
            if (tabType.getColumnView().nameJob)
              _buildCeil(
                TextBuild(
                  title: item.job ?? "",
                  style: textStyleValue(),
                ),
              ),
            SimpleButton(
              onPressed: () => Get.toNamed(
                AppRoutes.processDetail,
                arguments: item.id,
              ),
              child: Icon(
                Icons.remove_red_eye,
                color: context.onSurfaceColor,
              ),
            )
          ])
      ],
    );
  }

  Widget _buildCeil(Widget child) {
    return child.paddingSymmetric(
      horizontal: AppDimens.paddingSmallest,
      vertical: AppDimens.paddingVerySmall,
    );
  }
}
