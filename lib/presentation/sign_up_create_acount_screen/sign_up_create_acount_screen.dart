import 'package:almohsen_s_application11/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_trailing_image.dart';import 'package:almohsen_s_application11/widgets/custom_outlined_button.dart';import 'package:almohsen_s_application11/core/utils/validation_functions.dart';import 'package:almohsen_s_application11/widgets/custom_text_form_field.dart';import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/sign_up_create_acount_controller.dart';import 'package:almohsen_s_application11/domain/googleauth/google_auth_helper.dart';
// ignore_for_file: must_be_immutable
class SignUpCreateAcountScreen extends GetWidget<SignUpCreateAcountController> {SignUpCreateAcountScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v), child: Column(children: [Text("lbl_create_account".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 11.v), Text("msg_lorem_ipsum_dolor".tr, style: CustomTextStyles.titleMediumBluegray400), SizedBox(height: 28.v), CustomOutlinedButton(text: "msg_continue_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgGooglesymbol1, height: 23.v, width: 24.h)), onPressed: () {onTapContinueWithGoogle();}), SizedBox(height: 16.v), CustomOutlinedButton(text: "msg_continue_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgIconApple, height: 24.adaptSize, width: 24.adaptSize))), SizedBox(height: 26.v), Padding(padding: EdgeInsets.symmetric(horizontal: 33.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.symmetric(vertical: 8.v), child: SizedBox(width: 62.h, child: Divider(color: appTheme.blueGray100))), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("msg_or_continue_with".tr, style: CustomTextStyles.titleSmallGray500SemiBold)), Padding(padding: EdgeInsets.symmetric(vertical: 8.v), child: SizedBox(width: 74.h, child: Divider(indent: 12.h)))])), SizedBox(height: 28.v), _buildInputField(), SizedBox(height: 40.v), CustomElevatedButton(text: "msg_continue_with_email".tr, onPressed: () {onTapContinueWithEmail();}), SizedBox(height: 28.v), Padding(padding: EdgeInsets.symmetric(horizontal: 40.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_already_have_an".tr, style: CustomTextStyles.titleMediumGray500), GestureDetector(onTap: () {onTapTxtLargeLabelMedium();}, child: Padding(padding: EdgeInsets.only(left: 3.h), child: Text("lbl_login".tr, style: theme.textTheme.titleMedium)))])), SizedBox(height: 84.v), Container(width: 245.h, margin: EdgeInsets.symmetric(horizontal: 40.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_by_signing_up_you2".tr, style: CustomTextStyles.titleSmallffa3a2a7), TextSpan(text: "lbl_terms".tr, style: CustomTextStyles.titleSmallff000000), TextSpan(text: "lbl_and".tr, style: CustomTextStyles.titleSmallffa3a2a7), TextSpan(text: "msg_conditions_of_use".tr, style: CustomTextStyles.titleSmallff000000)]), textAlign: TextAlign.center)), SizedBox(height: 8.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage();}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgComponent3, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildInputField() { return Container(decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_email".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), CustomTextFormField(controller: controller.emailController, hintText: "msg_enter_your_email".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;})])); } 

/// Navigates to the previous screen.
onTapImage() { Get.back(); } 
onTapContinueWithGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
/// Navigates to the signUpCompleteAccountScreen when the action is triggered.
onTapContinueWithEmail() { Get.toNamed(AppRoutes.signUpCompleteAccountScreen, ); } 
/// Navigates to the loginScreen when the action is triggered.
onTapTxtLargeLabelMedium() { Get.toNamed(AppRoutes.loginScreen, ); } 
 }
