class HealthRecordItem {
  HealthRecordItem({
    required this.id,
    required this.customerId,
    required this.customerFullName,
    required this.ngayVao,
    required this.ngayRa,
    required this.ngayThanhToan,
    required this.soSeri,
    required this.trangThai,
    required this.coSoKcb,
    required this.tenBenh,
    required this.maBenh,
    required this.khoa,
    required this.loaiChungTu,
    required this.ngayCap,
    required this.created,
    required this.updated,
    required this.status,
    required this.createdBy,
    required this.userFullName,
  });

  final int? id;
  final int? customerId;
  final dynamic customerFullName;
  final String? ngayVao;
  final String? ngayRa;
  final dynamic ngayThanhToan;
  final String? soSeri;
  final String? trangThai;
  final dynamic coSoKcb;
  final dynamic tenBenh;
  final dynamic maBenh;
  final dynamic khoa;
  final String? loaiChungTu;
  final String? ngayCap;
  final int? created;
  final int? updated;
  final int? status;
  final int? createdBy;
  final dynamic userFullName;

  HealthRecordItem copyWith({
    int? id,
    int? customerId,
    dynamic? customerFullName,
    String? ngayVao,
    String? ngayRa,
    dynamic? ngayThanhToan,
    String? soSeri,
    String? trangThai,
    dynamic? coSoKcb,
    dynamic? tenBenh,
    dynamic? maBenh,
    dynamic? khoa,
    String? loaiChungTu,
    String? ngayCap,
    int? created,
    int? updated,
    int? status,
    int? createdBy,
    dynamic? userFullName,
  }) {
    return HealthRecordItem(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      customerFullName: customerFullName ?? this.customerFullName,
      ngayVao: ngayVao ?? this.ngayVao,
      ngayRa: ngayRa ?? this.ngayRa,
      ngayThanhToan: ngayThanhToan ?? this.ngayThanhToan,
      soSeri: soSeri ?? this.soSeri,
      trangThai: trangThai ?? this.trangThai,
      coSoKcb: coSoKcb ?? this.coSoKcb,
      tenBenh: tenBenh ?? this.tenBenh,
      maBenh: maBenh ?? this.maBenh,
      khoa: khoa ?? this.khoa,
      loaiChungTu: loaiChungTu ?? this.loaiChungTu,
      ngayCap: ngayCap ?? this.ngayCap,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      status: status ?? this.status,
      createdBy: createdBy ?? this.createdBy,
      userFullName: userFullName ?? this.userFullName,
    );
  }

  factory HealthRecordItem.fromJson(Map<String, dynamic> json) {
    return HealthRecordItem(
      id: json["id"],
      customerId: json["customer_id"],
      customerFullName: json["customer_full_name"],
      ngayVao: json["ngay_vao"],
      ngayRa: json["ngay_ra"],
      ngayThanhToan: json["ngay_thanh_toan"],
      soSeri: json["so_seri"],
      trangThai: json["trang_thai"],
      coSoKcb: json["co_so_kcb"],
      tenBenh: json["ten_benh"],
      maBenh: json["ma_benh"],
      khoa: json["khoa"],
      loaiChungTu: json["loai_chung_tu"],
      ngayCap: json["ngay_cap"],
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
        "ngay_vao": ngayVao,
        "ngay_ra": ngayRa,
        "ngay_thanh_toan": ngayThanhToan,
        "so_seri": soSeri,
        "trang_thai": trangThai,
        "co_so_kcb": coSoKcb,
        "ten_benh": tenBenh,
        "ma_benh": maBenh,
        "khoa": khoa,
        "loai_chung_tu": loaiChungTu,
        "ngay_cap": ngayCap,
        "created": created,
        "updated": updated,
        "status": status,
        "created_by": createdBy,
        "user_full_name": userFullName,
      };

  @override
  String toString() {
    return "$id, $customerId, $customerFullName, $ngayVao, $ngayRa, $ngayThanhToan, $soSeri, $trangThai, $coSoKcb, $tenBenh, $maBenh, $khoa, $loaiChungTu, $ngayCap, $created, $updated, $status, $createdBy, $userFullName, ";
  }
}
