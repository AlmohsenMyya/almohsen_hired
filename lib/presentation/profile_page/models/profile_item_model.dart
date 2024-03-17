import '../../../core/app_export.dart';/// This class is used in the [profile_item_widget] screen.
class ProfileItemModel {ProfileItemModel({this.image, this.bag, this.internshipUIUX, this.smallLabelRegular, this.smallLabelRegular1, this.zipcode, this.id, }) { image = image  ?? Rx(ImageConstant.imgLogoDeepOrange700);bag = bag  ?? Rx(ImageConstant.imgBag);internshipUIUX = internshipUIUX  ?? Rx("Internship UI/UX Designer");smallLabelRegular = smallLabelRegular  ?? Rx("Shopee Sg");smallLabelRegular1 = smallLabelRegular1  ?? Rx("•");zipcode = zipcode  ?? Rx("2019");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? bag;

Rx<String>? internshipUIUX;

Rx<String>? smallLabelRegular;

Rx<String>? smallLabelRegular1;

Rx<String>? zipcode;

Rx<String>? id;

 }
