import 'package:almohsen_s_application11/presentation/job_details_tab_container_screen/controller/job_details_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the JobDetailsTabContainerScreen.
///
/// This class ensures that the JobDetailsTabContainerController is created when the
/// JobDetailsTabContainerScreen is first loaded.
class JobDetailsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobDetailsTabContainerController());
  }
}
