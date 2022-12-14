import '../constants/url_const.dart';
import 'clients/client_http.dart';

abstract class IGithubUserDatasource {
  Future<Map<String, dynamic>> getDataSource();
}

class GithubUserDatasource implements IGithubUserDatasource {
  final IHttpService _service;

  GithubUserDatasource(this._service);

  @override
  Future<Map<String, dynamic>> getDataSource() async {
    final response = await _service.get(UrlConst.baseUrl);
    return response;
  }
}
