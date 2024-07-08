import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';

abstract class AuthDataSource {
  Future<BaseResponse> login(LoginRequest request);
}

class AuthApiDataSourceImp implements AuthDataSource {
  final ApiDioClient apiDioClient;

  AuthApiDataSourceImp(this.apiDioClient);

  @override
  Future<BaseResponse> login(LoginRequest request) async {
    try {
      final response = await apiDioClient.sendRequest(
        ApiUrl.urlLogin,
        RequestMethod.POST,
        jsonMap: request.toJson(),
      );
      return BaseResponse.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
