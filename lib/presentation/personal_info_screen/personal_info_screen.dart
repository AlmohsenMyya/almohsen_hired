import 'package:almohsen_s_application11/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_trailing_image.dart';import 'package:almohsen_s_application11/widgets/custom_text_form_field.dart';import 'package:almohsen_s_application11/core/utils/validation_functions.dart';import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/personal_info_controller.dart';
// ignore_for_file: must_be_immutable
class PersonalInfoScreen extends GetWidget<PersonalInfoController> {PersonalInfoScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 32.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_first_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildPersonalInfoFirstName(), SizedBox(height: 18.v), Text("lbl_last_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildPersonalInfoLastName(), SizedBox(height: 18.v), Text("lbl_email".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildPersonalInfoEmail(), SizedBox(height: 18.v), Text("lbl_phone".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildPersonalInfoPhone(), SizedBox(height: 18.v), Text("lbl_location".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), _buildPersonalInfoLocation()]))))]))), bottomNavigationBar: _buildSaveChanges())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage();}), centerTitle: true, title: AppbarTitle(text: "lbl_personal_info".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgEditSquare, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildPersonalInfoFirstName() { return CustomTextFormField(controller: controller.personalInfoFirstNameController, hintText: "lbl_gustavo".tr); } 
/// Section Widget
Widget _buildPersonalInfoLastName() { return CustomTextFormField(controller: controller.personalInfoLastNameController, hintText: "lbl_lipshutz".tr); } 
/// Section Widget
Widget _buildPersonalInfoEmail() { return CustomTextFormField(controller: controller.personalInfoEmailController, hintText: "lbl_xyz_gmail_com".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}); } 
/// Section Widget
Widget _buildPersonalInfoPhone() { return CustomTextFormField(controller: controller.personalInfoPhoneController, hintText: "lbl_1_1234567890".tr); } 
/// Section Widget
Widget _buildPersonalInfoLocation() { return CustomTextFormField(controller: controller.personalInfoLocationController, hintText: "lbl_lorem_ipsun".tr, textInputAction: TextInputAction.done, maxLines: 6, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v)); } 
/// Section Widget
Widget _buildSaveChanges() { return CustomElevatedButton(text: "lbl_save_changes".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 44.v), buttonStyle: CustomButtonStyles.fillGrayTL24, buttonTextStyle: CustomTextStyles.titleMediumGray50001); } 

/// Navigates to the previous screen.
onTapImage() { Get.back(); } 
 }
