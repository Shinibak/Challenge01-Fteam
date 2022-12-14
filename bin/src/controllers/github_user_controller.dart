import '../models/github_user_model.dart';
import '../repositories/github_user_repository.dart';

abstract class IGithubUserController {
  Future<void> initiatedGithubUser(); 
}

class GithubUserController implements IGithubUserController {
  final IGithubUserRepository _repository;

  GithubUserController(this._repository);

  GithubUserModel? githubUser;

  @override
  Future<void> initiatedGithubUser() async {
    githubUser = await _repository.getGithubUser();
    return print(githubUser!.toJson());
  }
}
