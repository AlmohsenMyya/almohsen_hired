import '../../../core/app_export.dart';/// This class is used in the [notificationsmyproposals_item_widget] screen.
class NotificationsmyproposalsItemModel {NotificationsmyproposalsItemModel({this.iconButton, this.seniorUIUXDesigner, this.smallLabelRegular, this.id, }) { iconButton = iconButton  ?? Rx(ImageConstant.imgGroupRed800);seniorUIUXDesigner = seniorUIUXDesigner  ?? Rx("Senior UI/UX Designer");smallLabelRegular = smallLabelRegular  ?? Rx("Shell");id = id  ?? Rx(""); }

Rx<String>? iconButton;

Rx<String>? seniorUIUXDesigner;

Rx<String>? smallLabelRegular;

Rx<String>? id;

 }
