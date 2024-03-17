import '../../../core/app_export.dart';import 'experiencesetting_item_model.dart';/// This class defines the variables used in the [experience_setting_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExperienceSettingModel {Rx<List<ExperiencesettingItemModel>> experiencesettingItemList = Rx([ExperiencesettingItemModel(bag:ImageConstant.imgBag.obs,internshipUIUX: "Internship UI/UX Designer".obs,smallLabelRegular: "Shopee Sg".obs,smallLabelRegular1: "•".obs,zipcode: "2019".obs),ExperiencesettingItemModel(bag:ImageConstant.imgCardano1.obs,internshipUIUX: "Junior UI Designer".obs,smallLabelRegular: "Cardano".obs,smallLabelRegular1: "•".obs,zipcode: "2020".obs),ExperiencesettingItemModel(bag:ImageConstant.imgLogoDeepOrange700.obs,internshipUIUX: "UI/UX Designer".obs,smallLabelRegular: "Shopee Sg".obs,smallLabelRegular1: "•".obs,zipcode: "2021".obs)]);

 }
