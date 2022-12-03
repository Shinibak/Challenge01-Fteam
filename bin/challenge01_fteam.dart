import 'package:challenge01_fteam/challenge01_fteam.dart' as challenge01_fteam;
import 'src/controllers/client_controller.dart';

main() async {
  var test = ClientController();
  await test.startCrient();
  print(test.clients!.toJson());
}
