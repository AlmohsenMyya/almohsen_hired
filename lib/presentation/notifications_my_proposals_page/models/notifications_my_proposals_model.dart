import '../../../core/app_export.dart';import 'notificationsmyproposals_item_model.dart';/// This class defines the variables used in the [notifications_my_proposals_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsMyProposalsModel {Rx<List<NotificationsmyproposalsItemModel>> notificationsmyproposalsItemList = Rx([NotificationsmyproposalsItemModel(iconButton:ImageConstant.imgGroupRed800.obs,seniorUIUXDesigner: "Senior UI/UX Designer".obs,smallLabelRegular: "Shell".obs),NotificationsmyproposalsItemModel(iconButton:ImageConstant.imgGroup.obs,seniorUIUXDesigner: "Senior UI/UX Designer".obs,smallLabelRegular: "Cardano ".obs),NotificationsmyproposalsItemModel(iconButton:ImageConstant.imgLogo.obs,seniorUIUXDesigner: "Senior UI/UX Designer".obs,smallLabelRegular: "Shopee Sg".obs)]);

 }
