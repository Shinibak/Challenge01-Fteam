import 'package:dio/dio.dart';

abstract class IHttpService {
  Future<dynamic> get(String url);
}

class DioHttpService implements IHttpService {
  final Dio dio;

  DioHttpService(this.dio);
  
  @override
  Future get(String url) async {
    return (await dio.get(url)).data;
  }
}
