import 'models/thirtyfourchipview_item_model.dart';import '../filter_bottomsheet/widgets/thirtyfourchipview_item_widget.dart';import 'models/jobschipview_item_model.dart';import '../filter_bottomsheet/widgets/jobschipview_item_widget.dart';import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/filter_controller.dart';
// ignore_for_file: must_be_immutable
class FilterBottomsheet extends StatelessWidget {FilterBottomsheet(this.controller, {Key? key}) : super(key: key);

FilterController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v), decoration: AppDecoration.background.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildCloseRow(), SizedBox(height: 29.v), Text("lbl_categories".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 14.v), _buildThirtyFourChipView(), SizedBox(height: 26.v), _buildPriceRow(priceValue1: "lbl_salaries".tr, priceValue2: "lbl_6_000_month".tr), SizedBox(height: 16.v), SliderTheme(data: SliderThemeData(trackShape: RoundedRectSliderTrackShape(), activeTrackColor: appTheme.deepOrangeA200, inactiveTrackColor: appTheme.gray100, thumbColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), thumbShape: RoundSliderThumbShape()), child: Slider(value: 52.91, min: 0.0, max: 100.0, onChanged: (value) {})), SizedBox(height: 2.v), _buildPriceRow(priceValue1: "lbl_560".tr, priceValue2: "lbl_12_000".tr), SizedBox(height: 28.v), Text("lbl_jobs".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 16.v), _buildJobsChipView(), SizedBox(height: 30.v), CustomElevatedButton(text: "lbl_apply_filter".tr, onPressed: () {onTapApplyFilter();}), SizedBox(height: 15.v)])); } 
/// Section Widget
Widget _buildCloseRow() { return Row(children: [CustomImageView(imagePath: ImageConstant.imgComponent1Primary, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapImgClose();}), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_filter".tr, style: CustomTextStyles.titleMedium18)), Spacer(), Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text("lbl_reset_filters".tr, style: CustomTextStyles.titleSmallDeeporangeA200))]); } 
/// Section Widget
Widget _buildThirtyFourChipView() { return Obx(() => Wrap(runSpacing: 16.v, spacing: 16.h, children: List<Widget>.generate(controller.filterModelObj.value.thirtyfourchipviewItemList.value.length, (index) {ThirtyfourchipviewItemModel model = controller.filterModelObj.value.thirtyfourchipviewItemList.value[index]; return ThirtyfourchipviewItemWidget(model);}))); } 
/// Section Widget
Widget _buildJobsChipView() { return Obx(() => Wrap(runSpacing: 16.v, spacing: 16.h, children: List<Widget>.generate(controller.filterModelObj.value.jobschipviewItemList.value.length, (index) {JobschipviewItemModel model = controller.filterModelObj.value.jobschipviewItemList.value[index]; return JobschipviewItemWidget(model);}))); } 
/// Common widget
Widget _buildPriceRow({required String priceValue1, required String priceValue2, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(priceValue1, style: CustomTextStyles.labelLargeSemiBold.copyWith(color: appTheme.blueGray400)), Text(priceValue2, style: CustomTextStyles.labelLargeSemiBold.copyWith(color: appTheme.blueGray400))]); } 

/// Navigates to the previous screen.
onTapImgClose() { Get.back(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapApplyFilter() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
 }
