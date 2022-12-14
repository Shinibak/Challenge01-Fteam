import 'package:dio/dio.dart';

abstract class IHttpService {
  Future<dynamic> get(String url);
}

class DioHttpService implements IHttpService {
  final Dio _dio;

  DioHttpService(this._dio);

  @override
  Future<dynamic> get(String url) async {
    final response = await _dio.get(url);
    return response.data;
  }
}
