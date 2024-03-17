import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/confirmation_controller.dart';
// ignore_for_file: must_be_immutable
class ConfirmationDialog extends StatelessWidget {ConfirmationDialog(this.controller, {Key? key}) : super(key: key);

ConfirmationController controller;

@override Widget build(BuildContext context) { return Container(width: 331.h, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 39.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), SizedBox(width: 279.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_i_agree_to_the".tr, style: CustomTextStyles.titleMediumffa3a2a7), TextSpan(text: "msg_terms_of_service".tr, style: CustomTextStyles.titleMediumff0d0140), TextSpan(text: "lbl_and".tr, style: CustomTextStyles.titleMediumffa3a2a7), TextSpan(text: "msg_conditions_of_use".tr, style: CustomTextStyles.titleMediumff0d0140), TextSpan(text: "msg_including_consent".tr, style: CustomTextStyles.titleMediumffa3a2a7)]), textAlign: TextAlign.center)), SizedBox(height: 17.v), CustomElevatedButton(height: 54.v, width: 181.h, text: "msg_agree_and_continue".tr, buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainerSemiBold, onPressed: () {onTapAgreeAndContinue();}), SizedBox(height: 24.v), Text("lbl_disgree".tr, style: CustomTextStyles.titleSmallOnPrimary)])); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapAgreeAndContinue() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
 }
