import '../../../core/app_export.dart';/// This class is used in the [jobtype_item_widget] screen.
class JobtypeItemModel {JobtypeItemModel({this.work, this.findAJob, this.itSEasyToFind, this.id, }) { work = work  ?? Rx(ImageConstant.imgWork);findAJob = findAJob  ?? Rx("Find a job");itSEasyToFind = itSEasyToFind  ?? Rx("It’s easy to find your dream jobs here with us.");id = id  ?? Rx(""); }

Rx<String>? work;

Rx<String>? findAJob;

Rx<String>? itSEasyToFind;

Rx<String>? id;

 }
