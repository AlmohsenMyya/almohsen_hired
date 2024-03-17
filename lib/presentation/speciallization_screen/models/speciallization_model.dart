import '../../../core/app_export.dart';import 'specialization_item_model.dart';/// This class defines the variables used in the [speciallization_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SpeciallizationModel {Rx<List<SpecializationItemModel>> specializationItemList = Rx([SpecializationItemModel(designCreative:ImageConstant.imgCheckmark.obs,designCreative1: "Design & Creative".obs),SpecializationItemModel(designCreative:ImageConstant.imgPlay.obs,designCreative1: "Development & IT".obs),SpecializationItemModel(designCreative:ImageConstant.imgPlay.obs,designCreative1: "Engineering & Architecture".obs),SpecializationItemModel(designCreative:ImageConstant.imgPlay.obs,designCreative1: "Sales & Marketing".obs),SpecializationItemModel(designCreative:ImageConstant.imgPlay.obs,designCreative1: "Writing".obs),SpecializationItemModel(designCreative:ImageConstant.imgPlay.obs,designCreative1: "Finance".obs)]);

 }
