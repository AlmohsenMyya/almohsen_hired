import 'package:almohsen_s_application11/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_trailing_image.dart';import 'widgets/jobtype_item_widget.dart';import 'models/jobtype_item_model.dart';import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/job_type_controller.dart';class JobTypeScreen extends GetWidget<JobTypeController> {const JobTypeScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 34.v), child: Column(children: [Text("lbl_choose_job_type".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 7.v), SizedBox(width: 209.h, child: Text("msg_are_you_looking".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallBluegray400.copyWith(height: 1.57))), SizedBox(height: 37.v), _buildJobType()])), bottomNavigationBar: _buildContinue())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage();}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgComponent3, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildJobType() { return SizedBox(height: 229.v, child: Obx(() => ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 15.h);}, itemCount: controller.jobTypeModelObj.value.jobtypeItemList.value.length, itemBuilder: (context, index) {JobtypeItemModel model = controller.jobTypeModelObj.value.jobtypeItemList.value[index]; return JobtypeItemWidget(model);}))); } 
/// Section Widget
Widget _buildContinue() { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 55.v), onPressed: () {onTapContinue();}); } 

/// Navigates to the previous screen.
onTapImage() { Get.back(); } 
/// Navigates to the speciallizationScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.speciallizationScreen, ); } 
 }
