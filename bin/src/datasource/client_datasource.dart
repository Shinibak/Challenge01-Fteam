import 'package:dio/dio.dart';
import '../consts/url_const.dart';
import 'clients/client_http.dart';

abstract class IGetClientDatasource {
  Future<dynamic> call();
}

class GetClientDatasource implements IGetClientDatasource {
  final IHttpService service;

  GetClientDatasource(this.service);

  @override
  Future<dynamic> call() async {
    final response = await service.get(UrlConst.baseUrl);
    return response;
  }
}
