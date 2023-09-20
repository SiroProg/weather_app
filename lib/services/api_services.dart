import 'package:dio/dio.dart';
import 'package:weather_app/utils/custom_exeptions.dart';

enum Method {
  get,
  post,
  put,
  patch,
  delete,
}

class ApiService {
  static ApiService _instance(Dio dio) => ApiService._(dio);
  factory ApiService(Dio dio) => _instance(dio);
  ApiService._(this.dio);
  final Dio dio;

  Future<String> request(
    String path, {
    Method method = Method.get,
    Map<String, String>? headers,
    Map<String, String>? queryParametrs,
    Map<String, Object>? body,
  }) async {
    if (headers != null) {
      dio.options.headers.addAll(headers);
    }
    try {
      Response<String> response = await switch (method) {
        Method.get =>
          dio.get<String>(path, queryParameters: queryParametrs, data: body),
        Method.post =>
          dio.post<String>(path, queryParameters: queryParametrs, data: body),
        Method.put =>
          dio.put<String>(path, queryParameters: queryParametrs, data: body),
        Method.patch =>
          dio.patch<String>(path, queryParameters: queryParametrs, data: body),
        Method.delete =>
          dio.delete<String>(path, queryParameters: queryParametrs, data: body),
      };
      return switch (response.statusCode) {
        null => Error.throwWithStackTrace(
            UnknownException("${response.data}"),
            StackTrace.current,
          ),
        >= 100 && < 200 => Error.throwWithStackTrace(
            UnknownException("${response.statusMessage}"),
            StackTrace.current,
          ),
        >= 200 && < 300 => response.data ?? "",
        >= 300 && < 400 => Error.throwWithStackTrace(
            ClientExcaption("${response.statusMessage}"),
            StackTrace.current,
          ),
        >= 400 && < 500 => Error.throwWithStackTrace(
            ServerExcaption("${response.statusMessage}"),
            StackTrace.current,
          ),
        >= 500 && < 600 => Error.throwWithStackTrace(
            UnknownException("${response.statusMessage}"),
            StackTrace.current,
          ),
        _ => ""
      };
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
      rethrow;
    }
  }
}


  // ApiService._() {
  //   final options = BaseOptions(
  //     baseUrl: Config.weatherBaseUrl,
  //     connectTimeout: const Duration(seconds: 5),
  //     receiveTimeout: const Duration(seconds: 5),
  //     responseType: ResponseType.json,
  //   );

  //   _dio = Dio(options);

  //   final geoOptions = BaseOptions(
  //     baseUrl: Config.geoBaseUrl,
  //     connectTimeout: const Duration(seconds: 5),
  //     receiveTimeout: const Duration(seconds: 5),
  //     responseType: ResponseType.json,
  //   );

  //   _geoDio = Dio(geoOptions);
  // }