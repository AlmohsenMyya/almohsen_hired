import 'fulltime1_item_model.dart';import '../../../core/app_export.dart';/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {FrameItemModel({this.seniorUIUXDesigner, this.shopee, this.jakartaIndonesia, this.price, this.fulltime1ItemList, this.id, }) { seniorUIUXDesigner = seniorUIUXDesigner  ?? Rx("Senior UI/UX Designer");shopee = shopee  ?? Rx("Shopee");jakartaIndonesia = jakartaIndonesia  ?? Rx("Jakarta, Indonesia (Remote)");price = price  ?? Rx("1100 - 12.000/Month");fulltime1ItemList = fulltime1ItemList  ?? Rx(List.generate(2,(index) =>Fulltime1ItemModel()));id = id  ?? Rx(""); }

Rx<String>? seniorUIUXDesigner;

Rx<String>? shopee;

Rx<String>? jakartaIndonesia;

Rx<String>? price;

Rx<List<Fulltime1ItemModel>>? fulltime1ItemList;

Rx<String>? id;

 }
