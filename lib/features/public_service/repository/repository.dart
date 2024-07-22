import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

enum RequestType { dichvu, lichsu, tintuc }

class PublicServiceRepository extends BaseRepository {
  PublicServiceRepository(super.controller);

  Future<BaseResponseList<PublicServiceResponse>> getData(
      RequestType requestType) async {
    late final idRequest;
    switch (requestType) {
      case RequestType.dichvu:
        idRequest = 48;
        break;
      case RequestType.lichsu:
        idRequest = 49;
        break;
      case RequestType.tintuc:
        idRequest = 47;
        break;
    }
    var response = await baseSendRequest(ApiUrl.service, RequestMethod.POST,
        jsonMap: {"id_categories": idRequest});
    return BaseResponseList<PublicServiceResponse>.fromJson(
      response,
      (x) => PublicServiceResponse.fromJson(x),
    );
  }
}
