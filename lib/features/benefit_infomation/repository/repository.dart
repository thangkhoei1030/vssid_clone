import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class BenefitInfomationRepository extends BaseRepository {
  BenefitInfomationRepository(super.controller);

  Future<BaseResponseList<BenefitInfomation>> getBenefitInfomation() async {
    var response = await baseSendRequest(ApiUrl.benefit, RequestMethod.POST);
    return BaseResponseList<BenefitInfomation>.fromJson(
        response, (x) => BenefitInfomation.fromJson(x));
  }
}
