import 'fiftynine_item_model.dart';import '../../../core/app_export.dart';import 'profile_item_model.dart';/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {Rx<List<FiftynineItemModel>> fiftynineItemList = Rx(List.generate(8,(index) =>FiftynineItemModel()));

Rx<List<ProfileItemModel>> profileItemList = Rx([ProfileItemModel(image:ImageConstant.imgLogoDeepOrange700.obs,bag:ImageConstant.imgBag.obs,internshipUIUX: "Internship UI/UX Designer".obs,smallLabelRegular: "Shopee Sg".obs,smallLabelRegular1: "•".obs,zipcode: "2019".obs)]);

 }
