import 'package:almohsen_s_application11/presentation/new_position_screen/controller/new_position_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NewPositionScreen.
///
/// This class ensures that the NewPositionController is created when the
/// NewPositionScreen is first loaded.
class NewPositionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewPositionController());
  }
}
