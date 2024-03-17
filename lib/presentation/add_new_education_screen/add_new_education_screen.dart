import 'package:almohsen_s_application11/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application11/widgets/custom_text_form_field.dart';import 'package:almohsen_s_application11/widgets/custom_drop_down.dart';import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/add_new_education_controller.dart';class AddNewEducationScreen extends GetWidget<AddNewEducationController> {const AddNewEducationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 32.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_school".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildSchoolEditText(), SizedBox(height: 20.v), Text("lbl_degree".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomDropDown(hintText: "lbl_ex_bachelor".tr, items: controller.addNewEducationModelObj.value.dropdownItemList!.value, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v)), SizedBox(height: 20.v), Text("lbl_field_of_study".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), _buildFieldOfStudyEditText(), SizedBox(height: 18.v), Text("lbl_start_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildEndDateRow(smallLabelRegular: "lbl_select_date".tr, onTapEndDateRow: () {onTapEndDateRow();}), SizedBox(height: 18.v), Text("lbl_end_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildEndDateRow(smallLabelRegular: "lbl_select_date".tr, onTapEndDateRow: () {onTapEndDateRow1();}), SizedBox(height: 18.v), Text("lbl_grade".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildGradeEditText(), SizedBox(height: 20.v), Text("lbl_description".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), _buildDescriptionEditText()]))))])), bottomNavigationBar: _buildSaveChangesButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapArrowBack();}), centerTitle: true, title: AppbarTitle(text: "msg_add_new_education".tr)); } 
/// Section Widget
Widget _buildSchoolEditText() { return CustomTextFormField(controller: controller.schoolEditTextController, hintText: "msg_ex_harvard_university".tr); } 
/// Section Widget
Widget _buildFieldOfStudyEditText() { return CustomTextFormField(controller: controller.fieldOfStudyEditTextController, hintText: "lbl_ex_business".tr); } 
/// Section Widget
Widget _buildGradeEditText() { return CustomTextFormField(controller: controller.gradeEditTextController, hintText: "lbl_ex_business".tr); } 
/// Section Widget
Widget _buildDescriptionEditText() { return CustomTextFormField(controller: controller.descriptionEditTextController, hintText: "lbl_lorem_ipsun".tr, textInputAction: TextInputAction.done, maxLines: 6, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v)); } 
/// Section Widget
Widget _buildSaveChangesButton() { return CustomElevatedButton(text: "lbl_save_changes".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 37.v), onPressed: () {onTapSaveChangesButton();}); } 
/// Common widget
Widget _buildEndDateRow({required String smallLabelRegular, Function? onTapEndDateRow, }) { return GestureDetector(onTap: () {onTapEndDateRow!.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(smallLabelRegular, style: CustomTextStyles.titleMediumBluegray400.copyWith(color: appTheme.blueGray400))), CustomImageView(imagePath: ImageConstant.imgCalendar, height: 24.adaptSize, width: 24.adaptSize)]))); } 

/// Navigates to the previous screen.
onTapArrowBack() { Get.back(); } 

/// Displays a date picker dialog and updates the selected date in the
/// [addNewEducationModelObj] object of the current [smallLabelRegular] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapEndDateRow() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.addNewEducationModelObj.value.selectedSmallLabelRegular!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.addNewEducationModelObj.value.selectedSmallLabelRegular!.value = dateTime;controller.addNewEducationModelObj.value.smallLabelRegular.value = dateTime.format(pattern: dateTimeFormatPattern);} } 

/// Displays a date picker dialog and updates the selected date in the
/// [addNewEducationModelObj] object of the current [smallLabelRegular1] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapEndDateRow1() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.addNewEducationModelObj.value.selectedSmallLabelRegular1!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.addNewEducationModelObj.value.selectedSmallLabelRegular1!.value = dateTime;controller.addNewEducationModelObj.value.smallLabelRegular1.value = dateTime.format(pattern: dateTimeFormatPattern);} } 
/// Navigates to the experienceSettingScreen when the action is triggered.
onTapSaveChangesButton() { Get.toNamed(AppRoutes.experienceSettingScreen, ); } 
 }
