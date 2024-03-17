import 'package:almohsen_s_application11/presentation/speciallization_screen/controller/speciallization_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SpeciallizationScreen.
///
/// This class ensures that the SpeciallizationController is created when the
/// SpeciallizationScreen is first loaded.
class SpeciallizationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpeciallizationController());
  }
}
