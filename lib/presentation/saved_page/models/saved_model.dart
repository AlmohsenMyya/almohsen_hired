import '../../../core/app_export.dart';import 'savedlist_item_model.dart';/// This class defines the variables used in the [saved_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SavedModel {Rx<List<SavedlistItemModel>> savedlistItemList = Rx([SavedlistItemModel(bag:ImageConstant.imgBag.obs,digitalMarketing: "UX Designer".obs,motorola: "Motorola".obs,price: "560 - 12.000/Month".obs),SavedlistItemModel(bag:ImageConstant.imgCardano2.obs,digitalMarketing: "UI/UX Designer".obs,motorola: "Motorola".obs,price: "560 - 12.000/Month".obs),SavedlistItemModel(bag:ImageConstant.imgSettingsRed800.obs,digitalMarketing: "UI Designer".obs,motorola: "Motorola".obs,price: "560 - 12.000/Month".obs)]);

 }
