import 'package:almohsen_s_application11/presentation/apply_job_screen/controller/apply_job_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ApplyJobScreen.
///
/// This class ensures that the ApplyJobController is created when the
/// ApplyJobScreen is first loaded.
class ApplyJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplyJobController());
  }
}
