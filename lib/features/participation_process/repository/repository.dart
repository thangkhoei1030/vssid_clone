import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ParticipationProcessRepository extends BaseRepository {
  ParticipationProcessRepository(super.controller);

  Future<BaseResponseList<ProcessItemResponse>> getProcessList() async {
    var response =
        await baseSendRequest(ApiUrl.processList, RequestMethod.POST);
    return BaseResponseList<ProcessItemResponse>.fromJson(
        response, (x) => ProcessItemResponse.fromJson(x));
  }
}
