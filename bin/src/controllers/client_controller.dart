import '../models/client_model.dart';
import '../repositories/client_repository.dart';

class ClientController {
  ClientModel? clients;
  final repository = ClienteRepository();

  Future startCrient() async {
    clients = await repository.fetchClient();
  }
}
