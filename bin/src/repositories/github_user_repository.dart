import '../datasource/github_user_datasource.dart';
import '../models/github_user_model.dart';

abstract class IGithubUserRepository {
  Future<GithubUserModel> getGithubUser();
}

class GithubUserRepository implements IGithubUserRepository {
  final IGithubUserDatasource _userDatasource;

  GithubUserRepository(this._userDatasource);

  @override
  Future<GithubUserModel> getGithubUser() async {
    final response = await _userDatasource.getDataSource();
    return GithubUserModel.fromJson(response);
  }
}
