class TableColumnView {
  //Từ tháng
  final bool fromDate;
  //Đến tháng
  final bool toDate;
  //Đơn vị
  final bool unit;
  //Nghề nghiệp
  final bool nameJob;
  const TableColumnView({
    this.fromDate = true,
    this.toDate = true,
    this.unit = false,
    this.nameJob = false,
  });
}
