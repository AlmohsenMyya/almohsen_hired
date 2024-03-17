import '../../../core/app_export.dart';import '../models/notifications_general_model.dart';/// A controller class for the NotificationsGeneralPage.
///
/// This class manages the state of the NotificationsGeneralPage, including the
/// current notificationsGeneralModelObj
class NotificationsGeneralController extends GetxController {NotificationsGeneralController(this.notificationsGeneralModelObj);

Rx<NotificationsGeneralModel> notificationsGeneralModelObj;

@override void onReady() { Get.toNamed(AppRoutes.settingsScreen, ); } 
 }
