import 'package:almohsen_s_application11/presentation/sign_up_complete_account_screen/controller/sign_up_complete_account_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpCompleteAccountScreen.
///
/// This class ensures that the SignUpCompleteAccountController is created when the
/// SignUpCompleteAccountScreen is first loaded.
class SignUpCompleteAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpCompleteAccountController());
  }
}
