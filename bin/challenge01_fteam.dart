import 'src/controllers/client_controller.dart';

main() async {
  var controller = ClientController();
  await controller.startClient();
  print(controller.client!.toJson());
}
