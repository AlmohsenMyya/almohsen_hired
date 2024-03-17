import 'package:almohsen_s_application11/presentation/personal_info_screen/controller/personal_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PersonalInfoScreen.
///
/// This class ensures that the PersonalInfoController is created when the
/// PersonalInfoScreen is first loaded.
class PersonalInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalInfoController());
  }
}
