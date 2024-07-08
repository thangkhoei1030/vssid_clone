import 'package:cookie_jar/cookie_jar.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:vssid/core/src_core.dart';

class ApiDioClient {
  static const timeOut = Duration(seconds: 15);

  final Dio dio = _createDio();

  static _createDio() {
    final dio = Dio(BaseOptions(
      baseUrl: ApiUrl.urlBase,
      connectTimeout: timeOut,
      sendTimeout: timeOut,
      receiveTimeout: timeOut,
    ));
    final cookies = PersistCookieJar(storage: FileStorage(path));
    dio.interceptors.add(CookieManager(cookies));
    return dio;
  }

  Future<dynamic> sendRequest(
    String action,
    RequestMethod requestMethod, {
    dynamic jsonMap,
    Map<String, String>? headersUrlOther,
    bool isQueryParametersPost = false,
    BaseOptions? dioOptions,
    bool isImage = false,
  }) async {
    Map<String, dynamic> headers =
        headersUrlOther ?? getBaseHeader(jsonMap, isImage: isImage);
    Options options = Options(
      headers: headers,
      method: requestMethod.toString(),
      responseType: ResponseType.json,
    );
    late final Response response;
    try {
      if (requestMethod == RequestMethod.POST) {
        if (isQueryParametersPost) {
          response = await dio.post(
            action,
            queryParameters: jsonMap,
            options: options,
          );
        } else {
          response = await dio.post(
            action,
            data: jsonMap,
            options: options,
          );
        }
      } else if (requestMethod == RequestMethod.DELETE) {
        response = await dio.delete(
          action,
          data: jsonMap,
          options: options,
        );
      } else if (requestMethod == RequestMethod.PUT) {
        response = await dio.put(
          action,
          data: jsonMap,
          options: options,
        );
      } else {
        response = await dio.get(
          action,
          queryParameters: jsonMap,
          options: options,
        );
      }

      if (response.data is String) {
        throw ServerException(
          statusCode: response.statusCode?.toString(),
          message: response.data,
        );
      }
      return response.data;
    } on DioException catch (e) {
      throw ServerException(
        statusCode: e.response?.statusCode?.toString(),
        message: e.response?.data,
      );
    } catch (e) {
      rethrow;
    }
  }

  Map<String, dynamic> getBaseHeader(
    dynamic jsonData, {
    bool isImage = false,
  }) {
    String authentication = _getToken(
      jsonData,
      isImage: isImage,
    );
    Map<String, dynamic> mapHeader = {
      "Content-Type": isImage ? "multipart/form-data" : "application/json",
      'Authorization': "Bearer $authentication",
    };
    return mapHeader;
  }

  String _getToken(
    dynamic json, {
    bool isImage = false,
  }) {
    final jwt = JWT(
      isImage ? [] : json ?? [],
    );
    return jwt.sign(
      SecretKey('1LbkcLCikacNr3BDpPhVLB0E4mynN6RkIGeVRm62zLj9QqHFI5'),
      algorithm: JWTAlgorithm.HS256,
    );
  }
}
