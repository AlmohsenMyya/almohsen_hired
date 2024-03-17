import 'package:almohsen_s_application11/presentation/notifications_my_proposals_tab_container_screen/controller/notifications_my_proposals_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationsMyProposalsTabContainerScreen.
///
/// This class ensures that the NotificationsMyProposalsTabContainerController is created when the
/// NotificationsMyProposalsTabContainerScreen is first loaded.
class NotificationsMyProposalsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsMyProposalsTabContainerController());
  }
}
