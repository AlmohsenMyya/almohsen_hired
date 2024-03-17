import 'package:almohsen_s_application11/presentation/select_a_country_screen/controller/select_a_country_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectACountryScreen.
///
/// This class ensures that the SelectACountryController is created when the
/// SelectACountryScreen is first loaded.
class SelectACountryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectACountryController());
  }
}
