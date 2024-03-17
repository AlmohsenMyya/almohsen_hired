import '../../../core/app_export.dart';/// This class is used in the [chineses_item_widget] screen.
class ChinesesItemModel {ChinesesItemModel({this.chineses, this.id, }) { chineses = chineses  ?? Rx("Chineses");id = id  ?? Rx(""); }

Rx<String>? chineses;

Rx<String>? id;

 }
