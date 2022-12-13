import '../datasource/client_datasource.dart';
import '../models/client_model.dart';

abstract class IClientRepository  {
  Future<GithubUserModel> getClient();
}

class ClientRepository implements IClientRepository {
  final IClientDatasource getClientDatasource;

  ClientRepository(this.getClientDatasource);

  @override
  Future<GithubUserModel> getClient() async {
    
    final response = await getClientDatasource.call();
    final client = GithubUserModel.fromJson(response);
    return client;
  }
}
