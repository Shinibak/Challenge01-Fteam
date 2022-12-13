import '../models/client_model.dart';
import '../repositories/client_repository.dart';

abstract class IClientController {
  Future <dynamic> startClient();
}

class ClientController extends IClientController {
  final IClientRepository repository;

  ClientController(this.repository);
  
  GithubUserModel? client;

  @override
  Future <dynamic> startClient() async {
    client = await repository.getClient();
    return print(client!.toJson());
  }
}
