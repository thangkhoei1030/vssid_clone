class BenefitInfomation {
  BenefitInfomation({
    required this.id,
    required this.customerId,
    required this.customerFullName,
    required this.fromdate,
    required this.todate,
    required this.donViDongbh,
    required this.cheDo,
    required this.loaiChedo,
    required this.tenLoaiChedo,
    required this.soTien,
    required this.created,
    required this.updated,
    required this.status,
    required this.createdBy,
    required this.userFullName,
  });

  final int? id;
  final int? customerId;
  final dynamic customerFullName;
  final String? fromdate;
  final String? todate;
  final String? donViDongbh;
  final String? cheDo;
  final String? loaiChedo;
  final String? tenLoaiChedo;
  final int? soTien;
  final int? created;
  final dynamic updated;
  final int? status;
  final int? createdBy;
  final dynamic userFullName;

  BenefitInfomation copyWith({
    int? id,
    int? customerId,
    dynamic? customerFullName,
    String? fromdate,
    String? todate,
    String? donViDongbh,
    String? cheDo,
    String? loaiChedo,
    String? tenLoaiChedo,
    int? soTien,
    int? created,
    dynamic? updated,
    int? status,
    int? createdBy,
    dynamic? userFullName,
  }) {
    return BenefitInfomation(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      customerFullName: customerFullName ?? this.customerFullName,
      fromdate: fromdate ?? this.fromdate,
      todate: todate ?? this.todate,
      donViDongbh: donViDongbh ?? this.donViDongbh,
      cheDo: cheDo ?? this.cheDo,
      loaiChedo: loaiChedo ?? this.loaiChedo,
      tenLoaiChedo: tenLoaiChedo ?? this.tenLoaiChedo,
      soTien: soTien ?? this.soTien,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      status: status ?? this.status,
      createdBy: createdBy ?? this.createdBy,
      userFullName: userFullName ?? this.userFullName,
    );
  }

  factory BenefitInfomation.fromJson(Map<String, dynamic> json) {
    return BenefitInfomation(
      id: json["id"],
      customerId: json["customer_id"],
      customerFullName: json["customer_full_name"],
      fromdate: json["fromdate"],
      todate: json["todate"],
      donViDongbh: json["don_vi_dongbh"],
      cheDo: json["che_do"],
      loaiChedo: json["loai_chedo"],
      tenLoaiChedo: json["ten_loai_chedo"],
      soTien: json["so_tien"],
      created: json["created"],
      updated: json["updated"],
      status: json["status"],
      createdBy: json["created_by"],
      userFullName: json["user_full_name"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_id": customerId,
        "customer_full_name": customerFullName,
        "fromdate": fromdate,
        "todate": todate,
        "don_vi_dongbh": donViDongbh,
        "che_do": cheDo,
        "loai_chedo": loaiChedo,
        "ten_loai_chedo": tenLoaiChedo,
        "so_tien": soTien,
        "created": created,
        "updated": updated,
        "status": status,
        "created_by": createdBy,
        "user_full_name": userFullName,
      };

  @override
  String toString() {
    return "$id, $customerId, $customerFullName, $fromdate, $todate, $donViDongbh, $cheDo, $loaiChedo, $tenLoaiChedo, $soTien, $created, $updated, $status, $createdBy, $userFullName, ";
  }
}
