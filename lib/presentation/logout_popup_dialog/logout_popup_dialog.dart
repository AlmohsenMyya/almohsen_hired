import 'package:almohsen_s_application11/widgets/custom_outlined_button.dart';import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/logout_popup_controller.dart';
// ignore_for_file: must_be_immutable
class LogoutPopupDialog extends StatelessWidget {LogoutPopupDialog(this.controller, {Key? key}) : super(key: key);

LogoutPopupController controller;

@override Widget build(BuildContext context) { return SingleChildScrollView(child: _buildPopUp()); } 
/// Section Widget
Widget _buildPopUp() { return Container(margin: EdgeInsets.only(left: 34.h, right: 34.h, bottom: 241.v), padding: EdgeInsets.all(32.h), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 9.v), CustomImageView(imagePath: ImageConstant.imgProfileOnprimary, height: 82.adaptSize, width: 82.adaptSize), SizedBox(height: 35.v), Text("lbl_are_you_sure".tr, style: CustomTextStyles.titleMediumBold), SizedBox(height: 8.v), Container(width: 229.h, margin: EdgeInsets.only(left: 6.h, right: 5.h), child: Text("msg_ullamcorper_imperdiet".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallBluegray400SemiBold.copyWith(height: 1.57))), SizedBox(height: 21.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(height: 46.v, text: "lbl_log_out2".tr, margin: EdgeInsets.only(right: 6.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL20, buttonTextStyle: CustomTextStyles.titleSmallSemiBold, onPressed: () {onTapLogOut();})), Expanded(child: CustomElevatedButton(height: 46.v, text: "lbl_cancel".tr, margin: EdgeInsets.only(left: 6.h), buttonStyle: CustomButtonStyles.fillPrimaryTL20, buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainerSemiBold, onPressed: () {onTapCancel();}))])])); } 
/// Navigates to the signUpCreateAcountScreen when the action is triggered.
onTapLogOut() { Get.offAllNamed(AppRoutes.signUpCreateAcountScreen, ); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapCancel() { Get.toNamed(AppRoutes.settingsScreen, ); } 
 }
