import '../../../core/app_export.dart';import 'englishuk_item_model.dart';import 'chineses_item_model.dart';/// This class defines the variables used in the [language_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LanguageModel {Rx<List<EnglishukItemModel>> englishukItemList = Rx([EnglishukItemModel(englishUK: "English (UK)".obs,englishUK1:ImageConstant.imgCheckmarkGreenA700.obs)]);

Rx<List<ChinesesItemModel>> chinesesItemList = Rx([ChinesesItemModel(chineses: "Chineses".obs),ChinesesItemModel(chineses: "Croatian".obs),ChinesesItemModel(chineses: "Czech".obs),ChinesesItemModel(chineses: "Danish".obs),ChinesesItemModel(chineses: "Filipino".obs),ChinesesItemModel(chineses: "Finland".obs)]);

 }
