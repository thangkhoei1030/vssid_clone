import 'package:vssid/core/src_core.dart';

class LookUpOnlineRepository extends BaseRepository {
  LookUpOnlineRepository(super.controller);

  Future<BaseResponse<Map<String, String>>> getCity() async {
    var response = await baseSendRequest(ApiUrl.listCity, RequestMethod.POST);
    return BaseResponse.fromJson(response,
        func: (x) => Map<String, String>.from(x));
  }

  Future<BaseResponse<Map<String, String>>> getProvince(String cityId) async {
    var response = await baseSendRequest(
      ApiUrl.listProvince,
      RequestMethod.POST,
      jsonMap: {"city_id": cityId},
    );
    return BaseResponse.fromJson(response,
        func: (x) => Map<String, String>.from(x));
  }
}
