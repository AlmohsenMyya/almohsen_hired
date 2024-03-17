import '../../../core/app_export.dart';import 'frame_item_model.dart';import 'settings_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {Rx<List<FrameItemModel>> frameItemList = Rx([FrameItemModel(seniorUIUXDesigner: "Senior UI/UX Designer".obs,shopee: "Shopee".obs,jakartaIndonesia: "Jakarta, Indonesia (Remote)".obs,price: "1100 - 12.000/Month".obs),FrameItemModel(seniorUIUXDesigner: "Senior UI/UX Designer".obs,shopee: "Shopee".obs,jakartaIndonesia: "Jakarta, Indonesia (Remote)".obs,price: "1100 - 12.000/Month".obs)]);

Rx<List<SettingsItemModel>> settingsItemList = Rx([SettingsItemModel(digitalMarketing: "Digital Marketing".obs,motorola: "Motorola".obs,price: "560 - 12.000/Month".obs)]);

 }
