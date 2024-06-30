import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ProcessDetailRepository extends BaseRepository {
  ProcessDetailRepository(super.controller);

  Future<BaseResponse<ProcessDetailResponse>> getProcessDetail(int id) async {
    var response = await baseSendRequest(
        ApiUrl.processDetail, RequestMethod.GET,
        jsonMap: {"id": id});
    return BaseResponse.fromJson(response,
        func: (x) => ProcessDetailResponse.fromJson(x));
  }
}
