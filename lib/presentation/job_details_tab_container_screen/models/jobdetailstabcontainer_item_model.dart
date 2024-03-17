import '../../../core/app_export.dart';/// This class is used in the [jobdetailstabcontainer_item_widget] screen.
class JobdetailstabcontainerItemModel {JobdetailstabcontainerItemModel({this.wallet, this.salary, this.price, this.id, }) { wallet = wallet  ?? Rx(ImageConstant.imgWallet);salary = salary  ?? Rx("Salary");price = price  ?? Rx("6k - 11k");id = id  ?? Rx(""); }

Rx<String>? wallet;

Rx<String>? salary;

Rx<String>? price;

Rx<String>? id;

 }
