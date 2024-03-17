import 'package:almohsen_s_application11/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_title.dart';import 'widgets/experiencesetting_item_widget.dart';import 'models/experiencesetting_item_model.dart';import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/experience_setting_controller.dart';class ExperienceSettingScreen extends GetWidget<ExperienceSettingController> {const ExperienceSettingScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 28.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildExperience(), SizedBox(height: 37.v), CustomElevatedButton(text: "msg_add_new_position".tr, onPressed: () {onTapAddNewPosition();}), SizedBox(height: 32.v), _buildUniversityOfOxford()]))))])), bottomNavigationBar: _buildAddNewEducation())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 51.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 14.v), onTap: () {onTapArrowBack();}), centerTitle: true, title: AppbarTitle(text: "lbl_experience".tr)); } 
/// Section Widget
Widget _buildExperience() { return Container(padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [_buildEducation(educationText: "lbl_experience".tr, onTapEditSquare: () {onTapEditSquare();}), SizedBox(height: 15.v), Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 11.5.v), child: SizedBox(width: 295.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray300)));}, itemCount: controller.experienceSettingModelObj.value.experiencesettingItemList.value.length, itemBuilder: (context, index) {ExperiencesettingItemModel model = controller.experienceSettingModelObj.value.experiencesettingItemList.value[index]; return ExperiencesettingItemWidget(model);}))])); } 
/// Section Widget
Widget _buildUniversityOfOxford() { return Container(padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildEducation(educationText: "lbl_education".tr), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(right: 83.h), child: Row(children: [CustomIconButton(height: 48.adaptSize, width: 48.adaptSize, padding: EdgeInsets.all(8.h), child: CustomImageView(imagePath: ImageConstant.imgFrame162724)), Expanded(child: Padding(padding: EdgeInsets.only(left: 12.h, top: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_university_of_oxford".tr, style: CustomTextStyles.titleSmallSemiBold), SizedBox(height: 6.v), Row(children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("msg_computer_science".tr, style: theme.textTheme.labelLarge)), Padding(padding: EdgeInsets.only(left: 4.h, top: 1.v), child: Text("lbl".tr, style: theme.textTheme.labelLarge)), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_2019".tr, style: theme.textTheme.labelLarge))])])))]))])); } 
/// Section Widget
Widget _buildAddNewEducation() { return CustomElevatedButton(text: "msg_add_new_education".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 55.v), onPressed: () {onTapAddNewEducation();}); } 
/// Common widget
Widget _buildEducation({required String educationText, Function? onTapEditSquare, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(educationText, style: CustomTextStyles.titleMediumBold_1.copyWith(color: theme.colorScheme.primary))), CustomImageView(imagePath: ImageConstant.imgEditSquarePrimary, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapEditSquare!.call();})]); } 

/// Navigates to the previous screen.
onTapArrowBack() { Get.back(); } 
/// Navigates to the newPositionScreen when the action is triggered.
onTapEditSquare() { Get.toNamed(AppRoutes.newPositionScreen, ); } 
/// Navigates to the newPositionScreen when the action is triggered.
onTapAddNewPosition() { Get.toNamed(AppRoutes.newPositionScreen, ); } 
/// Navigates to the addNewEducationScreen when the action is triggered.
onTapAddNewEducation() { Get.toNamed(AppRoutes.addNewEducationScreen, ); } 
 }
