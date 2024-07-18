import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:vssid/core/src_core.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:get/get.dart' hide Response;
// import 'package:sentry_flutter/sentry_flutter.dart';
// import 'package:vssid/core/src_core.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class BaseRequest extends GetxService {
  Dio _dio = Dio();

  @override
  void onInit() {
    _dio = Dio()..options = buildDefaultOptions();
    // _dio.addSentry();
    super.onInit();
  }

  BaseOptions buildDefaultOptions() {
    return BaseOptions()
      ..connectTimeout = const Duration(seconds: 15)
      ..receiveTimeout = const Duration(seconds: 15);
  }

  void close() {
    _dio.close(force: true);
    updateCurrentDio();
  }

  void updateCurrentDio() {
    _dio = Dio()..options = buildDefaultOptions();
    // _dio.addSentry();
    final cookies = PersistCookieJar(storage: FileStorage(path));
    _dio.interceptors.add(CookieManager(cookies));
  }

  Dio getCurrentDio() {
    return _dio;
  }

  void setOnErrorListener(Function(Object error) onErrorCallBack) {
    this.onErrorCallBack = onErrorCallBack;
  }

  late Function(Object error) onErrorCallBack;

  /// [isQueryParametersPost]: `true`: phương thức post gửi params, mặc định = `false`
  ///
  /// [dioOptions]: option của Dio() sử dụng khi gọi api có option riêng
  ///
  /// [functionError]: chạy function riêng khi request xảy ra Exception (mặc định sử dụng [showDialogError])
  Future<dynamic> sendRequest(
    String action,
    RequestMethod requestMethod, {
    dynamic jsonMap,
    bool isDownload = false,
    String? urlOther,
    Map<String, String>? headersUrlOther,
    bool isQueryParametersPost = false,
    required BaseGetxController controller,
    BaseOptions? dioOptions,
    Function(Object error)? functionError,
    bool isImage = false,
  }) async {
    _dio.options = dioOptions ?? buildDefaultOptions();
    dynamic response;
    String url = urlOther ?? (ApiUrl.urlBase + action);
    Map<String, dynamic> headers =
        headersUrlOther ?? getBaseHeader(jsonMap, isImage: isImage);
    Options options = isDownload
        ? Options(
            headers: headers,
            responseType: ResponseType.bytes,
            followRedirects: false,
            validateStatus: (status) {
              return status != null && status < 500;
            })
        : Options(
            headers: headers,
            method: requestMethod.toString(),
            responseType: ResponseType.json,
          );

    CancelToken cancelToken = CancelToken();
    controller.addCancelToken(cancelToken);
    try {
      if (requestMethod == RequestMethod.POST) {
        if (isQueryParametersPost) {
          response = await _dio.post(
            url,
            queryParameters: jsonMap,
            options: options,
            cancelToken: cancelToken,
          );
        } else {
          response = await _dio.post(
            url,
            data: jsonMap,
            options: options,
            cancelToken: cancelToken,
          );
        }
      } else if (requestMethod == RequestMethod.DELETE) {
        response = await _dio.delete(
          url,
          data: jsonMap,
          options: options,
          cancelToken: cancelToken,
        );
      } else if (requestMethod == RequestMethod.PUT) {
        response = await _dio.put(
          url,
          data: jsonMap,
          options: options,
          cancelToken: cancelToken,
        );
      } else {
        response = await _dio.get(
          url,
          queryParameters: jsonMap,
          options: options,
          cancelToken: cancelToken,
        );
      }

      if (response.data is String) {
        throw FormatException(response.data);
      }
      controller.isError.value = false;
      return response.data;
    } catch (e) {
      print(e.toString());
      // _testRequqest.throwab le = e;
      // _testRequqest.status = const SpanStatus.internalError();

      controller.cancelRequest(cancelToken);
      return functionError != null ? functionError(e) : showDialogError(e);
    }
  }

  dynamic showDialogError(dynamic e) {
    return onErrorCallBack(e);
  }

  Map<String, dynamic> getBaseHeader(
    dynamic jsonData, {
    bool isImage = false,
  }) {
    String authentication = _getToken(
      jsonData,
      isImage: isImage,
    );
    print(authentication);
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
      noIssueAt: true,
    );
  }
}
