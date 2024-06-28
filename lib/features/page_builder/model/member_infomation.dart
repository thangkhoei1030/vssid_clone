class MemberInfomation {
  MemberInfomation({
    required this.id,
    required this.customerId,
    required this.isPartnerAffiliate,
    required this.levelPartnerAffiliate,
    required this.code,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.birthday,
    required this.sotheBhyt,
    required this.noiDkkcbBd,
    required this.quyenLoi,
    required this.identityCardId,
    required this.identityCardDate,
    required this.identityCardWhere,
    required this.bhytTuNgay,
    required this.bhytDenNgay,
    required this.thoiDiem5Nam,
    required this.avatar,
    required this.anhTheBhyt,
    required this.sex,
    required this.note,
    required this.staffName,
    required this.status,
    required this.created,
    required this.updated,
    required this.addressId,
    required this.addressName,
    required this.address,
    required this.fullAddress,
    required this.countryId,
    required this.cityId,
    required this.districtId,
    required this.wardId,
    required this.countryName,
    required this.cityName,
    required this.districtName,
    required this.wardName,
    required this.zipCode,
    required this.addresses,
    required this.bank,
  });

  final int? id;
  final int? customerId;
  final int? isPartnerAffiliate;
  final int? levelPartnerAffiliate;
  final String? code;
  final String? fullName;
  final String? email;
  final String? phone;
  final String? birthday;
  final String? sotheBhyt;
  final String? noiDkkcbBd;
  final String? quyenLoi;
  final String? identityCardId;
  final String? identityCardDate;
  final String? identityCardWhere;
  final String? bhytTuNgay;
  final String? bhytDenNgay;
  final String? thoiDiem5Nam;
  final String? avatar;
  final String? anhTheBhyt;
  final String? sex;
  final dynamic note;
  final dynamic staffName;
  final int? status;
  final String? created;
  final String? updated;
  final int? addressId;
  final String? addressName;
  final String? address;
  final String? fullAddress;
  final int? countryId;
  final int? cityId;
  final int? districtId;
  final int? wardId;
  final String? countryName;
  final String? cityName;
  final String? districtName;
  final String? wardName;
  final dynamic zipCode;
  final List<Address> addresses;
  final List<dynamic> bank;

  MemberInfomation copyWith({
    int? id,
    int? customerId,
    int? isPartnerAffiliate,
    int? levelPartnerAffiliate,
    String? code,
    String? fullName,
    String? email,
    String? phone,
    String? birthday,
    String? sotheBhyt,
    String? noiDkkcbBd,
    String? quyenLoi,
    String? identityCardId,
    String? identityCardDate,
    String? identityCardWhere,
    String? bhytTuNgay,
    String? bhytDenNgay,
    String? thoiDiem5Nam,
    String? avatar,
    String? anhTheBhyt,
    String? sex,
    dynamic? note,
    dynamic? staffName,
    int? status,
    String? created,
    String? updated,
    int? addressId,
    String? addressName,
    String? address,
    String? fullAddress,
    int? countryId,
    int? cityId,
    int? districtId,
    int? wardId,
    String? countryName,
    String? cityName,
    String? districtName,
    String? wardName,
    dynamic? zipCode,
    List<Address>? addresses,
    List<dynamic>? bank,
  }) {
    return MemberInfomation(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      isPartnerAffiliate: isPartnerAffiliate ?? this.isPartnerAffiliate,
      levelPartnerAffiliate:
          levelPartnerAffiliate ?? this.levelPartnerAffiliate,
      code: code ?? this.code,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      birthday: birthday ?? this.birthday,
      sotheBhyt: sotheBhyt ?? this.sotheBhyt,
      noiDkkcbBd: noiDkkcbBd ?? this.noiDkkcbBd,
      quyenLoi: quyenLoi ?? this.quyenLoi,
      identityCardId: identityCardId ?? this.identityCardId,
      identityCardDate: identityCardDate ?? this.identityCardDate,
      identityCardWhere: identityCardWhere ?? this.identityCardWhere,
      bhytTuNgay: bhytTuNgay ?? this.bhytTuNgay,
      bhytDenNgay: bhytDenNgay ?? this.bhytDenNgay,
      thoiDiem5Nam: thoiDiem5Nam ?? this.thoiDiem5Nam,
      avatar: avatar ?? this.avatar,
      anhTheBhyt: anhTheBhyt ?? this.anhTheBhyt,
      sex: sex ?? this.sex,
      note: note ?? this.note,
      staffName: staffName ?? this.staffName,
      status: status ?? this.status,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      addressId: addressId ?? this.addressId,
      addressName: addressName ?? this.addressName,
      address: address ?? this.address,
      fullAddress: fullAddress ?? this.fullAddress,
      countryId: countryId ?? this.countryId,
      cityId: cityId ?? this.cityId,
      districtId: districtId ?? this.districtId,
      wardId: wardId ?? this.wardId,
      countryName: countryName ?? this.countryName,
      cityName: cityName ?? this.cityName,
      districtName: districtName ?? this.districtName,
      wardName: wardName ?? this.wardName,
      zipCode: zipCode ?? this.zipCode,
      addresses: addresses ?? this.addresses,
      bank: bank ?? this.bank,
    );
  }

  factory MemberInfomation.fromJson(Map<String, dynamic> json) {
    return MemberInfomation(
      id: json["id"],
      customerId: json["customer_id"],
      isPartnerAffiliate: json["is_partner_affiliate"],
      levelPartnerAffiliate: json["level_partner_affiliate"],
      code: json["code"],
      fullName: json["full_name"],
      email: json["email"],
      phone: json["phone"],
      birthday: json["birthday"],
      sotheBhyt: json["sothe_bhyt"],
      noiDkkcbBd: json["noi_dkkcb_bd"],
      quyenLoi: json["quyen_loi"],
      identityCardId: json["identity_card_id"],
      identityCardDate: json["identity_card_date"],
      identityCardWhere: json["identity_card_where"],
      bhytTuNgay: json["bhyt_tu_ngay"],
      bhytDenNgay: json["bhyt_den_ngay"],
      thoiDiem5Nam: json["thoi_diem_5nam"],
      avatar: json["avatar"],
      anhTheBhyt: json["anh_the_bhyt"],
      sex: json["sex"],
      note: json["note"],
      staffName: json["staff_name"],
      status: json["status"],
      created: json["created"],
      updated: json["updated"],
      addressId: json["address_id"],
      addressName: json["address_name"],
      address: json["address"],
      fullAddress: json["full_address"],
      countryId: json["country_id"],
      cityId: json["city_id"],
      districtId: json["district_id"],
      wardId: json["ward_id"],
      countryName: json["country_name"],
      cityName: json["city_name"],
      districtName: json["district_name"],
      wardName: json["ward_name"],
      zipCode: json["zip_code"],
      addresses: json["addresses"] == null
          ? []
          : List<Address>.from(
              json["addresses"]!.map((x) => Address.fromJson(x))),
      bank: json["bank"] == null
          ? []
          : List<dynamic>.from(json["bank"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_id": customerId,
        "is_partner_affiliate": isPartnerAffiliate,
        "level_partner_affiliate": levelPartnerAffiliate,
        "code": code,
        "full_name": fullName,
        "email": email,
        "phone": phone,
        "birthday": birthday,
        "sothe_bhyt": sotheBhyt,
        "noi_dkkcb_bd": noiDkkcbBd,
        "quyen_loi": quyenLoi,
        "identity_card_id": identityCardId,
        "identity_card_date": identityCardDate,
        "identity_card_where": identityCardWhere,
        "bhyt_tu_ngay": bhytTuNgay,
        "bhyt_den_ngay": bhytDenNgay,
        "thoi_diem_5nam": thoiDiem5Nam,
        "avatar": avatar,
        "anh_the_bhyt": anhTheBhyt,
        "sex": sex,
        "note": note,
        "staff_name": staffName,
        "status": status,
        "created": created,
        "updated": updated,
        "address_id": addressId,
        "address_name": addressName,
        "address": address,
        "full_address": fullAddress,
        "country_id": countryId,
        "city_id": cityId,
        "district_id": districtId,
        "ward_id": wardId,
        "country_name": countryName,
        "city_name": cityName,
        "district_name": districtName,
        "ward_name": wardName,
        "zip_code": zipCode,
        "addresses": addresses.map((x) => x.toJson()).toList(),
        "bank": bank.map((x) => x).toList(),
      };

  @override
  String toString() {
    return "$id, $customerId, $isPartnerAffiliate, $levelPartnerAffiliate, $code, $fullName, $email, $phone, $birthday, $sotheBhyt, $noiDkkcbBd, $quyenLoi, $identityCardId, $identityCardDate, $identityCardWhere, $bhytTuNgay, $bhytDenNgay, $thoiDiem5Nam, $avatar, $anhTheBhyt, $sex, $note, $staffName, $status, $created, $updated, $addressId, $addressName, $address, $fullAddress, $countryId, $cityId, $districtId, $wardId, $countryName, $cityName, $districtName, $wardName, $zipCode, $addresses, $bank, ";
  }
}

class Address {
  Address({
    required this.id,
    required this.addressId,
    required this.customerId,
    required this.addressName,
    required this.phone,
    required this.address,
    required this.countryId,
    required this.cityId,
    required this.districtId,
    required this.wardId,
    required this.countryName,
    required this.cityName,
    required this.districtName,
    required this.wardName,
    required this.fullAddress,
    required this.zipCode,
    required this.isDefault,
  });

  final int? id;
  final int? addressId;
  final int? customerId;
  final String? addressName;
  final String? phone;
  final String? address;
  final int? countryId;
  final int? cityId;
  final int? districtId;
  final int? wardId;
  final String? countryName;
  final String? cityName;
  final String? districtName;
  final String? wardName;
  final String? fullAddress;
  final dynamic zipCode;
  final int? isDefault;

  Address copyWith({
    int? id,
    int? addressId,
    int? customerId,
    String? addressName,
    String? phone,
    String? address,
    int? countryId,
    int? cityId,
    int? districtId,
    int? wardId,
    String? countryName,
    String? cityName,
    String? districtName,
    String? wardName,
    String? fullAddress,
    dynamic? zipCode,
    int? isDefault,
  }) {
    return Address(
      id: id ?? this.id,
      addressId: addressId ?? this.addressId,
      customerId: customerId ?? this.customerId,
      addressName: addressName ?? this.addressName,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      countryId: countryId ?? this.countryId,
      cityId: cityId ?? this.cityId,
      districtId: districtId ?? this.districtId,
      wardId: wardId ?? this.wardId,
      countryName: countryName ?? this.countryName,
      cityName: cityName ?? this.cityName,
      districtName: districtName ?? this.districtName,
      wardName: wardName ?? this.wardName,
      fullAddress: fullAddress ?? this.fullAddress,
      zipCode: zipCode ?? this.zipCode,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json["id"],
      addressId: json["address_id"],
      customerId: json["customer_id"],
      addressName: json["address_name"],
      phone: json["phone"],
      address: json["address"],
      countryId: json["country_id"],
      cityId: json["city_id"],
      districtId: json["district_id"],
      wardId: json["ward_id"],
      countryName: json["country_name"],
      cityName: json["city_name"],
      districtName: json["district_name"],
      wardName: json["ward_name"],
      fullAddress: json["full_address"],
      zipCode: json["zip_code"],
      isDefault: json["is_default"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "address_id": addressId,
        "customer_id": customerId,
        "address_name": addressName,
        "phone": phone,
        "address": address,
        "country_id": countryId,
        "city_id": cityId,
        "district_id": districtId,
        "ward_id": wardId,
        "country_name": countryName,
        "city_name": cityName,
        "district_name": districtName,
        "ward_name": wardName,
        "full_address": fullAddress,
        "zip_code": zipCode,
        "is_default": isDefault,
      };

  @override
  String toString() {
    return "$id, $addressId, $customerId, $addressName, $phone, $address, $countryId, $cityId, $districtId, $wardId, $countryName, $cityName, $districtName, $wardName, $fullAddress, $zipCode, $isDefault, ";
  }
}
