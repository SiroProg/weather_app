import 'package:dio/dio.dart';
import 'package:weather_app/services/api_services.dart';

abstract interface class IServiceWrapper {
  abstract Dio dio;
  abstract ApiService apiService;

  Future<String> request(
    String path, {
    Method method = Method.get,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    Map<String, Object>? body,
  });
}

class WeatherServiceWrapper implements IServiceWrapper {
  WeatherServiceWrapper({required this.dio}) : apiService = ApiService(dio);

  @override
  ApiService apiService;

  @override
  Dio dio;

  @override
  Future<String> request(String path,
          {Method method = Method.get,
          Map<String, String>? headers,
          Map<String, String>? queryParameters,
          Map<String, Object>? body}) =>
      apiService.request(
        path,
        method: method,
        queryParametrs: queryParameters,
        body: body,
      );
}

class GeoServiceWrapper implements IServiceWrapper {
  GeoServiceWrapper({required this.dio}) : apiService = ApiService(dio);

  @override
  ApiService apiService;

  @override
  Dio dio;

  @override
  Future<String> request(String path,
          {Method method = Method.get,
          Map<String, String>? headers,
          Map<String, String>? queryParameters,
          Map<String, Object>? body}) =>
      apiService.request(
        path,
        method: method,
        queryParametrs: queryParameters,
        body: body,
      );
}
