import '../../../core/app_export.dart';/// This class is used in the [englishuk_item_widget] screen.
class EnglishukItemModel {EnglishukItemModel({this.englishUK, this.englishUK1, this.id, }) { englishUK = englishUK  ?? Rx("English (UK)");englishUK1 = englishUK1  ?? Rx(ImageConstant.imgCheckmarkGreenA700);id = id  ?? Rx(""); }

Rx<String>? englishUK;

Rx<String>? englishUK1;

Rx<String>? id;

 }
