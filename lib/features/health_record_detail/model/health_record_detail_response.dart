class HealthRecordDetailResponse {
  HealthRecordDetailResponse({
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
    required this.details,
  });

  final int? id;
  final int? customerId;
  final dynamic customerFullName;
  final String? ngayVao;
  final String? ngayRa;
  final String? ngayThanhToan;
  final String? soSeri;
  final dynamic trangThai;
  final dynamic coSoKcb;
  final dynamic tenBenh;
  final dynamic maBenh;
  final dynamic khoa;
  final String? loaiChungTu;
  final dynamic ngayCap;
  final int? created;
  final int? updated;
  final int? status;
  final int? createdBy;
  final dynamic userFullName;
  final List<Detail> details;

  HealthRecordDetailResponse copyWith({
    int? id,
    int? customerId,
    dynamic customerFullName,
    String? ngayVao,
    String? ngayRa,
    String? ngayThanhToan,
    String? soSeri,
    dynamic trangThai,
    dynamic coSoKcb,
    dynamic tenBenh,
    dynamic maBenh,
    dynamic khoa,
    String? loaiChungTu,
    dynamic ngayCap,
    int? created,
    int? updated,
    int? status,
    int? createdBy,
    dynamic userFullName,
    List<Detail>? details,
  }) {
    return HealthRecordDetailResponse(
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
      details: details ?? this.details,
    );
  }

  factory HealthRecordDetailResponse.fromJson(Map<String, dynamic> json) {
    return HealthRecordDetailResponse(
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
      details: json["details"] == null
          ? []
          : List<Detail>.from(json["details"]!.map((x) => Detail.fromJson(x))),
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
        "details": details.map((x) => x?.toJson()).toList(),
      };

  @override
  String toString() {
    return "$id, $customerId, $customerFullName, $ngayVao, $ngayRa, $ngayThanhToan, $soSeri, $trangThai, $coSoKcb, $tenBenh, $maBenh, $khoa, $loaiChungTu, $ngayCap, $created, $updated, $status, $createdBy, $userFullName, $details, ";
  }
}

class Detail {
  Detail({
    required this.id,
    required this.healthId,
    required this.tenChiPhi,
    required this.donViTinh,
    required this.soLuong,
    required this.donGia,
    required this.mucHuong,
    required this.thanhTien,
    required this.bhThanhToan,
    required this.nguonKhac,
    required this.bnTuTra,
    required this.bnCungChiTra,
  });

  final int? id;
  final int? healthId;
  final String? tenChiPhi;
  final String? donViTinh;
  final int? soLuong;
  final int? donGia;
  final int? mucHuong;
  final int? thanhTien;
  final int? bhThanhToan;
  final dynamic nguonKhac;
  final int? bnTuTra;
  final int? bnCungChiTra;

  Detail copyWith({
    int? id,
    int? healthId,
    String? tenChiPhi,
    String? donViTinh,
    int? soLuong,
    int? donGia,
    int? mucHuong,
    int? thanhTien,
    int? bhThanhToan,
    dynamic nguonKhac,
    int? bnTuTra,
    int? bnCungChiTra,
  }) {
    return Detail(
      id: id ?? this.id,
      healthId: healthId ?? this.healthId,
      tenChiPhi: tenChiPhi ?? this.tenChiPhi,
      donViTinh: donViTinh ?? this.donViTinh,
      soLuong: soLuong ?? this.soLuong,
      donGia: donGia ?? this.donGia,
      mucHuong: mucHuong ?? this.mucHuong,
      thanhTien: thanhTien ?? this.thanhTien,
      bhThanhToan: bhThanhToan ?? this.bhThanhToan,
      nguonKhac: nguonKhac ?? this.nguonKhac,
      bnTuTra: bnTuTra ?? this.bnTuTra,
      bnCungChiTra: bnCungChiTra ?? this.bnCungChiTra,
    );
  }

  factory Detail.fromJson(Map<String, dynamic> json) {
    return Detail(
      id: json["id"],
      healthId: json["health_id"],
      tenChiPhi: json["ten_chi_phi"],
      donViTinh: json["don_vi_tinh"],
      soLuong: json["so_luong"],
      donGia: json["don_gia"],
      mucHuong: json["muc_huong"],
      thanhTien: json["thanh_tien"],
      bhThanhToan: json["bh_thanh_toan"],
      nguonKhac: json["nguon_khac"],
      bnTuTra: json["bn_tu_tra"],
      bnCungChiTra: json["bn_cung_chi_tra"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "health_id": healthId,
        "ten_chi_phi": tenChiPhi,
        "don_vi_tinh": donViTinh,
        "so_luong": soLuong,
        "don_gia": donGia,
        "muc_huong": mucHuong,
        "thanh_tien": thanhTien,
        "bh_thanh_toan": bhThanhToan,
        "nguon_khac": nguonKhac,
        "bn_tu_tra": bnTuTra,
        "bn_cung_chi_tra": bnCungChiTra,
      };

  @override
  String toString() {
    return "$id, $healthId, $tenChiPhi, $donViTinh, $soLuong, $donGia, $mucHuong, $thanhTien, $bhThanhToan, $nguonKhac, $bnTuTra, $bnCungChiTra, ";
  }
}
