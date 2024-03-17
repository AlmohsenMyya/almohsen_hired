import 'package:almohsen_s_application11/presentation/message_action_screen/controller/message_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessageActionScreen.
///
/// This class ensures that the MessageActionController is created when the
/// MessageActionScreen is first loaded.
class MessageActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageActionController());
  }
}
