import 'package:dio/dio.dart';
import '../consts/url_const.dart';
import 'clients/client_http.dart';

abstract class IClientDatasource {
  Future<dynamic> call();
}

class ClientDatasource implements IClientDatasource {
  final IHttpService service;

  ClientDatasource(this.service);

  @override
  Future<dynamic> call() async {
    final response = await service.get(UrlConst.baseUrl);
    return response;
  }
}
