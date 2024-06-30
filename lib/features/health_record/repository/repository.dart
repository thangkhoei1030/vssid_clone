import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class HealthRecordRepository extends BaseRepository {
  HealthRecordRepository(super.controller);

  Future<BaseResponseList<HealthRecordItem>> getListRecord() async {
    var response = await baseSendRequest(ApiUrl.health, RequestMethod.GET);
    return BaseResponseList.fromJson(
        response, (x) => HealthRecordItem.fromJson(x));
  }
}
