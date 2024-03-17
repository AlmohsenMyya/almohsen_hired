import 'package:almohsen_s_application11/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';
import 'controller/select_a_country_controller.dart';

// ignore_for_file: must_be_immutable
class SelectACountryScreen extends GetWidget<SelectACountryController> {
  const SelectACountryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildSelectACountry(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectACountry() {
    return Obx(
      () => Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 24.v,
              right: 217.h,
            ),
            child: CustomRadioButton(
              text: "lbl_afghanistan".tr,
              value: controller.selectACountryModelObj.value.radioList.value[0],
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 22.v,
              right: 253.h,
            ),
            child: CustomRadioButton(
              text: "lbl_albania".tr,
              value: controller.selectACountryModelObj.value.radioList.value[1],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 24.v,
              right: 256.h,
            ),
            child: CustomRadioButton(
              text: "lbl_algeria".tr,
              value: controller.selectACountryModelObj.value.radioList.value[2],
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 22.v,
              right: 248.h,
            ),
            child: CustomRadioButton(
              text: "lbl_andorra".tr,
              value: controller.selectACountryModelObj.value.radioList.value[3],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 24.v,
              right: 256.h,
            ),
            child: CustomRadioButton(
              text: "lbl_angola".tr,
              value: controller.selectACountryModelObj.value.radioList.value[4],
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 22.v,
              right: 148.h,
            ),
            child: CustomRadioButton(
              text: "msg_antigua_and_barbuda".tr,
              value: controller.selectACountryModelObj.value.radioList.value[5],
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 22.v,
              right: 234.h,
            ),
            child: CustomRadioButton(
              text: "lbl_argentina".tr,
              value: controller.selectACountryModelObj.value.radioList.value[6],
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 22.v,
              right: 234.h,
            ),
            child: CustomRadioButton(
              text: "lbl_argentina".tr,
              value: controller.selectACountryModelObj.value.radioList.value[7],
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 22.v,
              right: 246.h,
            ),
            child: CustomRadioButton(
              text: "lbl_armenia".tr,
              value: controller.selectACountryModelObj.value.radioList.value[8],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 24.v,
              right: 243.h,
            ),
            child: CustomRadioButton(
              text: "lbl_australia".tr,
              value: controller.selectACountryModelObj.value.radioList.value[9],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 24.v,
              right: 256.h,
            ),
            child: CustomRadioButton(
              text: "lbl_austria".tr,
              value:
                  controller.selectACountryModelObj.value.radioList.value[10],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 24.v,
              right: 229.h,
            ),
            child: CustomRadioButton(
              text: "lbl_azerbaijan".tr,
              value:
                  controller.selectACountryModelObj.value.radioList.value[11],
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.h, 22.v, 229.h, 5.v),
            child: CustomRadioButton(
              text: "lbl_azerbaijan".tr,
              value:
                  controller.selectACountryModelObj.value.radioList.value[12],
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
