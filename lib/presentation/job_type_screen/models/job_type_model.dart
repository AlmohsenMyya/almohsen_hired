import '../../../core/app_export.dart';import 'jobtype_item_model.dart';/// This class defines the variables used in the [job_type_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class JobTypeModel {Rx<List<JobtypeItemModel>> jobtypeItemList = Rx([JobtypeItemModel(work:ImageConstant.imgWork.obs,findAJob: "Find a job".obs,itSEasyToFind: "It’s easy to find your dream jobs here with us.".obs),JobtypeItemModel(work:ImageConstant.imgProfileOrange500.obs,findAJob: "Find a employee".obs,itSEasyToFind: "It’s easy to find eployees here with us.".obs)]);

 }
