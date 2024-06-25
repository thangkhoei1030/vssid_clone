import 'package:data_table_2/data_table_2.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class TableData extends StatelessWidget {
  const TableData({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      // showBottomBorder: true,
      border: TableBorder.all(),
      // columnSpacing: 10,]
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(0.15),
        1: FractionColumnWidth(0.15),
        2: FractionColumnWidth(0.4),
        3: FractionColumnWidth(0.2),
        4: FractionColumnWidth(0.1)
      },
      children: [
        TableRow(
            decoration: BoxDecoration(
              color: context.onSurfaceColor,
            ),
            children: [
              _buildCeil(
                const TextBuild(
                  isAutoSizeText: true,
                  title: ParticipationProcessString.fromDate,
                  textColor: Colors.white,
                  maxLines: 5,
                ),
              ),
              _buildCeil(
                const TextBuild(
                  title: ParticipationProcessString.toDate,
                  textColor: Colors.white,
                ),
              ),
              _buildCeil(
                const TextBuild(
                  title: ParticipationProcessString.factory,
                  textColor: Colors.white,
                ),
              ),
              _buildCeil(
                const TextBuild(
                  title: ParticipationProcessString.job,
                  textColor: Colors.white,
                ),
              ),
              const SizedBox.shrink(),
            ]),
        for (int i = 0; i < 10; i++)
          TableRow(children: [
            _buildCeil(
              TextBuild(
                  title: DateTimeFormat().convertToString(
                DateTime.now(),
                DateTimePattern.PATTERN_1,
              )),
            ),
            _buildCeil(
              TextBuild(
                  title: DateTimeFormat().convertToString(
                DateTime.now(),
                DateTimePattern.PATTERN_1,
              )),
            ),
            _buildCeil(
              const TextBuild(
                title:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
              ),
            ),
            _buildCeil(
              const TextBuild(
                title: "Lorem Ipsum",
              ),
            ),
            Icon(Icons.remove_red_eye)
          ])
      ],
    );
  }

  Widget _buildCeil(Widget child) {
    return child.paddingAll(AppDimens.paddingSmallest);
  }
}
