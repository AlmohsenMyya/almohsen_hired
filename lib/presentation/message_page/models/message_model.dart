import '../../../core/app_export.dart';import 'message_item_model.dart';/// This class defines the variables used in the [message_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageModel {Rx<List<MessageItemModel>> messageItemList = Rx([MessageItemModel(circleImage:ImageConstant.imgAvatar56x56.obs,chanceSeptimus: "Chance Septimus".obs,loremIpsumDolor: "Lorem ipsum dolor sit amet...".obs,time: "10:20".obs),MessageItemModel(circleImage:ImageConstant.imgAvatar1.obs,chanceSeptimus: "Robert Fox".obs,loremIpsumDolor: "Lorem ipsum dolor sit amet...".obs,time: "10:20".obs)]);

 }
