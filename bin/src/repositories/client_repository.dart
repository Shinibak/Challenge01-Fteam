import 'package:dio/dio.dart';
import '../models/client_model.dart';

class ClienteRepository {
  final dio = Dio();
  final url = 'https://api.github.com/users/Flutterando';

  Future fetchClient() async {
    final response = await dio.get(url);
    final client = ClientModel.fromJson(response.data);
    return client;
  }
}
