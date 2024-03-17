import '../../../core/app_export.dart';/// This class is used in the [notifications_item_widget] screen.
class NotificationsItemModel {NotificationsItemModel({this.newPost, this.isSelectedSwitch, this.id, }) { newPost = newPost  ?? Rx("New Post");isSelectedSwitch = isSelectedSwitch  ?? Rx(false);id = id  ?? Rx(""); }

Rx<String>? newPost;

Rx<bool>? isSelectedSwitch;

Rx<String>? id;

 }
