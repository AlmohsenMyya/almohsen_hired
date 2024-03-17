import 'package:almohsen_s_application11/presentation/job_type_screen/controller/job_type_controller.dart';
import 'package:get/get.dart';

/// A binding class for the JobTypeScreen.
///
/// This class ensures that the JobTypeController is created when the
/// JobTypeScreen is first loaded.
class JobTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobTypeController());
  }
}
