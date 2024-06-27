import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class LoginRepository extends BaseRepository {
  LoginRepository(super.controller);

  Future<BaseResponse> login(LoginRequest loginRequest) async {
    var response = await baseSendRequest(ApiUrl.urlLogin, RequestMethod.POST,
        jsonMap: loginRequest.toJson());
    print(response);
    return BaseResponse.fromJson(response);
  }
}
