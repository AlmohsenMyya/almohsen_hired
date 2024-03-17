import '../../../core/app_export.dart';import '../models/language_model.dart';/// A controller class for the LanguageScreen.
///
/// This class manages the state of the LanguageScreen, including the
/// current languageModelObj
class LanguageController extends GetxController {Rx<LanguageModel> languageModelObj = LanguageModel().obs;

 }
