import '../../../core/app_export.dart';import 'fulltime7_item_model.dart';/// This class is used in the [savedlist_item_widget] screen.
class SavedlistItemModel {SavedlistItemModel({this.bag, this.digitalMarketing, this.motorola, this.price, this.fulltime7ItemList, this.id, }) { bag = bag  ?? Rx(ImageConstant.imgBag);digitalMarketing = digitalMarketing  ?? Rx("UX Designer");motorola = motorola  ?? Rx("Motorola");price = price  ?? Rx("560 - 12.000/Month");fulltime7ItemList = fulltime7ItemList  ?? Rx(List.generate(2,(index) =>Fulltime7ItemModel()));id = id  ?? Rx(""); }

Rx<String>? bag;

Rx<String>? digitalMarketing;

Rx<String>? motorola;

Rx<String>? price;

Rx<List<Fulltime7ItemModel>>? fulltime7ItemList;

Rx<String>? id;

 }
