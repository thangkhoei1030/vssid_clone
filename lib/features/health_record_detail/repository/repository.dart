import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class HealthRecordDetailRepository extends BaseRepository {
  HealthRecordDetailRepository(super.controller);

  Future<BaseResponse<HealthRecordDetailResponse>> getRecordDetail(
      String idRecord) async {
    var response =
        await baseSendRequest(ApiUrl.healthDetail, RequestMethod.GET, jsonMap: {
      "id": idRecord,
    });
    return BaseResponse.fromJson(response,
        func: (x) => HealthRecordDetailResponse.fromJson(x));
  }
}
