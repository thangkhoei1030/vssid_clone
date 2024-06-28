import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class PageBuilderRepository extends BaseRepository {
  PageBuilderRepository(super.controller);

  Future<BaseResponse<MemberInfomation>> getMemberInfomation() async {
    var response =
        await baseSendRequest(ApiUrl.memberInfomation, RequestMethod.POST);
    return BaseResponse<MemberInfomation>.fromJson(
      response,
      func: (x) => MemberInfomation.fromJson(x),
    );
  }
}
