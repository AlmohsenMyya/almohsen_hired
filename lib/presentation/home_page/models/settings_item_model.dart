import 'fulltime3_item_model.dart';import '../../../core/app_export.dart';/// This class is used in the [settings_item_widget] screen.
class SettingsItemModel {SettingsItemModel({this.digitalMarketing, this.motorola, this.price, this.fulltime3ItemList, this.id, }) { digitalMarketing = digitalMarketing  ?? Rx("Digital Marketing");motorola = motorola  ?? Rx("Motorola");price = price  ?? Rx("560 - 12.000/Month");fulltime3ItemList = fulltime3ItemList  ?? Rx(List.generate(2,(index) =>Fulltime3ItemModel()));id = id  ?? Rx(""); }

Rx<String>? digitalMarketing;

Rx<String>? motorola;

Rx<String>? price;

Rx<List<Fulltime3ItemModel>>? fulltime3ItemList;

Rx<String>? id;

 }
