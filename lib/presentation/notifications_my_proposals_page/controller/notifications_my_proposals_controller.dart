import '../../../core/app_export.dart';import '../models/notifications_my_proposals_model.dart';/// A controller class for the NotificationsMyProposalsPage.
///
/// This class manages the state of the NotificationsMyProposalsPage, including the
/// current notificationsMyProposalsModelObj
class NotificationsMyProposalsController extends GetxController {NotificationsMyProposalsController(this.notificationsMyProposalsModelObj);

Rx<NotificationsMyProposalsModel> notificationsMyProposalsModelObj;

@override void onReady() { Get.toNamed(AppRoutes.settingsScreen, ); } 
 }
