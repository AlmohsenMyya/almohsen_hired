import '../../../core/app_export.dart';/// This class is used in the [message_item_widget] screen.
class MessageItemModel {MessageItemModel({this.circleImage, this.chanceSeptimus, this.loremIpsumDolor, this.time, this.id, }) { circleImage = circleImage  ?? Rx(ImageConstant.imgAvatar56x56);chanceSeptimus = chanceSeptimus  ?? Rx("Chance Septimus");loremIpsumDolor = loremIpsumDolor  ?? Rx("Lorem ipsum dolor sit amet...");time = time  ?? Rx("10:20");id = id  ?? Rx(""); }

Rx<String>? circleImage;

Rx<String>? chanceSeptimus;

Rx<String>? loremIpsumDolor;

Rx<String>? time;

Rx<String>? id;

 }
