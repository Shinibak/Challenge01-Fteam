import '../models/client_model.dart';
import '../repositories/Iclient_repository.dart';
import '../repositories/client_repository.dart';

class ClientController {
  
  GithubUserModel? client;
  IClientRepository repository = ClientRepository();

  Future<void> startClient() async {
    client = await repository.getClient();
  }
}
