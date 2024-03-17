import '../../../core/app_export.dart';/// This class is used in the [notificationsgeneral_item_widget] screen.
class NotificationsgeneralItemModel {NotificationsgeneralItemModel({this.bag, this.juniorUIDesigner, this.shopeeSg, this.time, this.loremIpsumDolor, this.id, }) { bag = bag  ?? Rx(ImageConstant.imgBag);juniorUIDesigner = juniorUIDesigner  ?? Rx("Junior UI Designer ");shopeeSg = shopeeSg  ?? Rx("Shopee Sg");time = time  ?? Rx("32 Min ago");loremIpsumDolor = loremIpsumDolor  ?? Rx("Lorem ipsum dolor sit amet, consectetur adipiscing elit.");id = id  ?? Rx(""); }

Rx<String>? bag;

Rx<String>? juniorUIDesigner;

Rx<String>? shopeeSg;

Rx<String>? time;

Rx<String>? loremIpsumDolor;

Rx<String>? id;

 }
