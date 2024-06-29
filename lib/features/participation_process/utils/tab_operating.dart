import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

enum TabProcessType {
  bhxh(ParticipationProcessString.bhxh, {
    0: FractionColumnWidth(0.15),
    1: FractionColumnWidth(0.15),
    2: FractionColumnWidth(0.4),
    3: FractionColumnWidth(0.2),
    4: FractionColumnWidth(0.1)
  }),
  bhtn(ParticipationProcessString.bhtn, {
    0: FractionColumnWidth(0.15),
    1: FractionColumnWidth(0.15),
    2: FractionColumnWidth(0.4),
    3: FractionColumnWidth(0.2),
    4: FractionColumnWidth(0.1)
  }),
  bhtnld(ParticipationProcessString.bhtnld, {
    0: FractionColumnWidth(0.15),
    1: FractionColumnWidth(0.15),
    2: FractionColumnWidth(0.4),
    3: FractionColumnWidth(0.2),
    4: FractionColumnWidth(0.1)
  }),
  bhyt(ParticipationProcessString.bhyt, {
    0: FractionColumnWidth(0.15),
    1: FractionColumnWidth(0.15),
    2: FractionColumnWidth(0.6),
    3: FractionColumnWidth(0.1)
  });

  final String headerTitle;
  final Map<int, FractionColumnWidth> columnWidth;
  const TabProcessType(this.headerTitle, this.columnWidth);
}

extension TabTypeOperator on TabProcessType {
  TableColumnView getColumnView() {
    switch (this) {
      case TabProcessType.bhxh:
      case TabProcessType.bhtn:
      case TabProcessType.bhtnld:
        return const TableColumnView(unit: true, nameJob: true);
      case TabProcessType.bhyt:
      default:
        return const TableColumnView(unit: true);
    }
  }
}
