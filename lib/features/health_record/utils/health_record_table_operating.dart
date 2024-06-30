import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

enum HealthRecordTabType {
  history(HealthRecordStr.history, {
    0: FractionColumnWidth(0.3),
    1: FractionColumnWidth(0.3),
    2: FractionColumnWidth(0.3),
    3: FractionColumnWidth(0.1),
  }),
  giaycap(HealthRecordStr.giaycap, {
    0: FractionColumnWidth(0.3),
    1: FractionColumnWidth(0.25),
    2: FractionColumnWidth(0.25),
    3: FractionColumnWidth(0.15),
    4: FractionColumnWidth(0.05)
  });

  final String headerTitle;
  final Map<int, FractionColumnWidth> columnWidth;
  const HealthRecordTabType(this.headerTitle, this.columnWidth);
}

extension HealthRecordTabTypeOperator on HealthRecordTabType {
  HealthRecordTableColumnView getColumnView() {
    switch (this) {
      case HealthRecordTabType.giaycap:
        return const HealthRecordTableColumnView(
            soseri: true, loaichungtu: true, ngaycap: true, trangthai: true);
      case HealthRecordTabType.history:
      default:
        return const HealthRecordTableColumnView(
            ngayvao: true, ngayra: true, tenbenh: true);
    }
  }
}
