import 'package:dio/dio.dart';
import 'src/controllers/github_user_controller.dart';
import 'src/datasource/clients/client_http.dart';
import 'src/datasource/github_user_datasource.dart';
import 'src/repositories/github_user_repository.dart';

main() async {
  final dio = Dio();
  final dioService = DioHttpService(dio);
  final datasource = GithubUserDatasource(dioService);
  final repository = GithubUserRepository(datasource);
  final controller = GithubUserController(repository);
  await controller.initiatedGithubUser();
  print(controller.initiatedGithubUser.toString());
}
