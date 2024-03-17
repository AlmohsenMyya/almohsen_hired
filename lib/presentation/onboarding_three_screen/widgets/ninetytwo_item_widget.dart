import '../models/ninetytwo_item_model.dart';
import '../controller/onboarding_three_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class NinetytwoItemWidget extends StatelessWidget {
  NinetytwoItemWidget(
    this.ninetytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetytwoItemModel ninetytwoItemModelObj;

  var controller = Get.find<OnboardingThreeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: _buildApplicationSurelyContent(),
    );
  }

  /// Section Widget
  Widget _buildApplicationSurelyContent() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 41.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 214.h,
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_application_surely2".tr,
                    style: CustomTextStyles.headlineSmallff0d0140,
                  ),
                  TextSpan(
                    text: "lbl_each_company".tr,
                    style: CustomTextStyles.headlineSmallff0d0140,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: 243.h,
            child: Text(
              "msg_semper_in_cursus".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallGray500SemiBold.copyWith(
                height: 1.57,
              ),
            ),
          ),
          SizedBox(height: 69.v),
          CustomElevatedButton(
            width: 156.h,
            text: "lbl_get_started".tr,
          ),
        ],
      ),
    );
  }
}
