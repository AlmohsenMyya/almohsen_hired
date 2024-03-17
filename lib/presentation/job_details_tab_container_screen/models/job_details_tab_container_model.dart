import 'framefive_item_model.dart';import '../../../core/app_export.dart';import 'jobdetailstabcontainer_item_model.dart';/// This class defines the variables used in the [job_details_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class JobDetailsTabContainerModel {Rx<List<FramefiveItemModel>> framefiveItemList = Rx(List.generate(2,(index) =>FramefiveItemModel()));

Rx<List<JobdetailstabcontainerItemModel>> jobdetailstabcontainerItemList = Rx([JobdetailstabcontainerItemModel(wallet:ImageConstant.imgWallet.obs,salary: "Salary".obs,price: "6k - 11k".obs),JobdetailstabcontainerItemModel(wallet:ImageConstant.imgWorkDeepPurple400.obs,salary: "Job Type".obs,price: "Remote".obs),JobdetailstabcontainerItemModel(wallet:ImageConstant.imgProfileOrange500.obs,salary: "Position".obs,price: "Senior".obs)]);

 }
