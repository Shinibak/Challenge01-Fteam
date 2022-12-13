import 'package:dio/dio.dart';
import 'src/controllers/client_controller.dart';
import 'src/datasource/client_datasource.dart';
import 'src/datasource/clients/client_http.dart';
import 'src/repositories/client_repository.dart';

main() async {
  final dio = Dio();
  final dioService = DioHttpService(dio);
  final clientDatasource = ClientDatasource(dioService);
  final clientRepository = ClientRepository(clientDatasource);
  final controller = ClientController(clientRepository);
  await controller.startClient();
}
