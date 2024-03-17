import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';
import 'controller/apply_job_popup_controller.dart';

class ApplyJobPopupDialog extends StatelessWidget {
  ApplyJobPopupDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ApplyJobPopupController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 302.h,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp11,
            height: 101.adaptSize,
            width: 101.adaptSize,
          ),
          SizedBox(height: 25.v),
          Text(
            "lbl_success".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
          SizedBox(height: 9.v),
          Text(
            "msg_your_application".tr,
            style: CustomTextStyles.titleSmallBluegray400SemiBold,
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            height: 54.v,
            width: 127.h,
            text: "lbl_continue".tr,
            buttonTextStyle:
                CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
          ),
        ],
      ),
    );
  }
}
