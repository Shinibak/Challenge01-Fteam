import '../models/client_model.dart';

abstract class IClientRepository  {
  Future<GithubUserModel> getClient();
}