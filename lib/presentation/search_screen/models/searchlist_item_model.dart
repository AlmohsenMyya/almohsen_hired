import '../../../core/app_export.dart';import 'fulltime5_item_model.dart';/// This class is used in the [searchlist_item_widget] screen.
class SearchlistItemModel {SearchlistItemModel({this.settings, this.digitalMarketing, this.motorola, this.price, this.fulltime5ItemList, this.id, }) { settings = settings  ?? Rx(ImageConstant.imgSettingsRed800);digitalMarketing = digitalMarketing  ?? Rx("Senior UI/UX Designer");motorola = motorola  ?? Rx("Motorola");price = price  ?? Rx("560 - 12.000/Month");fulltime5ItemList = fulltime5ItemList  ?? Rx(List.generate(2,(index) =>Fulltime5ItemModel()));id = id  ?? Rx(""); }

Rx<String>? settings;

Rx<String>? digitalMarketing;

Rx<String>? motorola;

Rx<String>? price;

Rx<List<Fulltime5ItemModel>>? fulltime5ItemList;

Rx<String>? id;

 }
