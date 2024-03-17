import 'package:almohsen_s_application11/presentation/sign_up_create_acount_screen/controller/sign_up_create_acount_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpCreateAcountScreen.
///
/// This class ensures that the SignUpCreateAcountController is created when the
/// SignUpCreateAcountScreen is first loaded.
class SignUpCreateAcountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpCreateAcountController());
  }
}
