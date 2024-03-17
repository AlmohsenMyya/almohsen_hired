import '../../../core/app_export.dart';
import '../models/select_a_country_model.dart';

/// A controller class for the SelectACountryScreen.
///
/// This class manages the state of the SelectACountryScreen, including the
/// current selectACountryModelObj
class SelectACountryController extends GetxController {
  Rx<SelectACountryModel> selectACountryModelObj = SelectACountryModel().obs;

  Rx<String> radioGroup = "".obs;
}
