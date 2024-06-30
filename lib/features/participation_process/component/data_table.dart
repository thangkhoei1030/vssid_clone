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

  @override
  Widget build(BuildContext context) {
    return Table(
      // showBottomBorder: true,
      border: TableBorder.all(),
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
            decoration: BoxDecoration(
              color: context.onSurfaceColor,
            ),
            children: [
              if (tabType.getColumnView().fromDate)
                _buildCeil(
                  const TextBuild(
                    isAutoSizeText: true,
                    title: ParticipationProcessString.fromDate,
                    textColor: Colors.white,
                    maxLines: 5,
                  ),
                ),
              if (tabType.getColumnView().toDate)
                _buildCeil(
                  const TextBuild(
                    title: ParticipationProcessString.toDate,
                    textColor: Colors.white,
                  ),
                ),
              if (tabType.getColumnView().unit)
                _buildCeil(
                  const TextBuild(
                    title: ParticipationProcessString.factory,
                    textColor: Colors.white,
                  ),
                ),
              if (tabType.getColumnView().nameJob)
                _buildCeil(
                  const TextBuild(
                    title: ParticipationProcessString.job,
                    textColor: Colors.white,
                  ),
                ),
              const SizedBox.shrink(),
            ]),
        for (ProcessItemResponse item in controller.listProcess.value)
          TableRow(children: [
            if (tabType.getColumnView().fromDate)
              _buildCeil(
                TextBuild(
                  title: item.fromdate ?? "",
                ),
              ),
            if (tabType.getColumnView().toDate)
              _buildCeil(
                TextBuild(
                  title: item.todate ?? "",
                ),
              ),
            if (tabType.getColumnView().unit)
              _buildCeil(
                TextBuild(
                  title: item.workUnit ?? "",
                ),
              ),
            if (tabType.getColumnView().nameJob)
              _buildCeil(
                TextBuild(
                  title: item.job ?? "",
                ),
              ),
            SimpleButton(
                onPressed: () => Get.toNamed(
                      AppRoutes.processDetail,
                      arguments: item.id,
                    ),
                child: const Icon(Icons.remove_red_eye))
          ])
      ],
    );
  }

  Widget _buildCeil(Widget child) {
    return child.paddingAll(AppDimens.paddingSmallest);
  }
}
