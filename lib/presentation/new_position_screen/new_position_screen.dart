import 'package:almohsen_s_application11/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application11/widgets/custom_text_form_field.dart';import 'package:almohsen_s_application11/widgets/custom_drop_down.dart';import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/new_position_controller.dart';class NewPositionScreen extends GetWidget<NewPositionController> {const NewPositionScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 36.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_title".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildFrameOneEditText(), SizedBox(height: 20.v), _buildInputFieldColumn(), SizedBox(height: 20.v), Text("lbl_company_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), _buildNameEditText(), SizedBox(height: 18.v), Text("lbl_location2".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildLocationEditText(), SizedBox(height: 18.v), Text("lbl_start_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildFrameOneRow(labelText: "lbl_select_date".tr, onTapFrameOneRow: () {onTapFrameOneRow();}), SizedBox(height: 18.v), Text("lbl_end_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildFrameOneRow(labelText: "lbl_select_date".tr, onTapFrameOneRow: () {onTapFrameOneRow1();}), SizedBox(height: 20.v), Text("msg_job_role_description".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), _buildFrameOneEditText1()]))))])), bottomNavigationBar: _buildSaveChangesButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapArrowBack();}), centerTitle: true, title: AppbarTitle(text: "msg_add_new_position".tr)); } 
/// Section Widget
Widget _buildFrameOneEditText() { return CustomTextFormField(controller: controller.frameOneEditTextController, hintText: "lbl_ex_ui_designer".tr); } 
/// Section Widget
Widget _buildInputFieldColumn() { return Container(decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_employment_type".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 19.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkGray900, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_please_select".tr, items: controller.newPositionModelObj.value.dropdownItemList!.value)])); } 
/// Section Widget
Widget _buildNameEditText() { return CustomTextFormField(controller: controller.nameEditTextController, hintText: "lbl_ex_shopee".tr); } 
/// Section Widget
Widget _buildLocationEditText() { return CustomTextFormField(controller: controller.locationEditTextController, hintText: "msg_ex_singapore_singapore".tr); } 
/// Section Widget
Widget _buildFrameOneEditText1() { return CustomTextFormField(controller: controller.frameOneEditTextController1, hintText: "lbl_lorem_ipsun".tr, textInputAction: TextInputAction.done, maxLines: 6, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v)); } 
/// Section Widget
Widget _buildSaveChangesButton() { return CustomElevatedButton(text: "lbl_save_changes".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 37.v), onPressed: () {onTapSaveChangesButton();}); } 
/// Common widget
Widget _buildFrameOneRow({required String labelText, Function? onTapFrameOneRow, }) { return GestureDetector(onTap: () {onTapFrameOneRow!.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(labelText, style: CustomTextStyles.titleMediumBluegray400.copyWith(color: appTheme.blueGray400))), CustomImageView(imagePath: ImageConstant.imgCalendar, height: 24.adaptSize, width: 24.adaptSize)]))); } 

/// Navigates to the previous screen.
onTapArrowBack() { Get.back(); } 

/// Displays a date picker dialog and updates the selected date in the
/// [newPositionModelObj] object of the current [labelText] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapFrameOneRow() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.newPositionModelObj.value.selectedLabelText!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.newPositionModelObj.value.selectedLabelText!.value = dateTime;controller.newPositionModelObj.value.labelText.value = dateTime.format(pattern: dateTimeFormatPattern);} } 

/// Displays a date picker dialog and updates the selected date in the
/// [newPositionModelObj] object of the current [labelText1] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapFrameOneRow1() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.newPositionModelObj.value.selectedLabelText1!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.newPositionModelObj.value.selectedLabelText1!.value = dateTime;controller.newPositionModelObj.value.labelText1.value = dateTime.format(pattern: dateTimeFormatPattern);} } 
/// Navigates to the experienceSettingScreen when the action is triggered.
onTapSaveChangesButton() { Get.toNamed(AppRoutes.experienceSettingScreen, ); } 
 }
