import 'package:dio/dio.dart';
import '../datasource/client_datasource.dart';
import '../datasource/clients/client_http.dart';
import '../models/client_model.dart';
import 'Iclient_repository.dart';

class ClientRepository implements IClientRepository {
 

  @override
  Future<GithubUserModel> getClient() async {
    final dio = Dio();
    final dioService = DioHttpService(dio);
    IGetClientDatasource getClientDatasource = GetClientDatasource(dioService);
    final response = await getClientDatasource.call();
    final client = GithubUserModel.fromJson(response);
    return client;
  }
}
