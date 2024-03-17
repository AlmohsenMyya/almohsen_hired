import 'package:almohsen_s_application11/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_trailing_image.dart';import 'widgets/savedlist_item_widget.dart';import 'models/savedlist_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/saved_controller.dart';import 'models/saved_model.dart';
// ignore_for_file: must_be_immutable
class SavedPage extends StatelessWidget {SavedPage({Key? key}) : super(key: key);

SavedController controller = Get.put(SavedController(SavedModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 30.v, right: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 12.v);}, itemCount: controller.savedModelObj.value.savedlistItemList.value.length, itemBuilder: (context, index) {SavedlistItemModel model = controller.savedModelObj.value.savedlistItemList.value[index]; return SavedlistItemWidget(model, onTapBag: () {onTapBag();});}))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage();}), centerTitle: true, title: AppbarTitle(text: "lbl_saved".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgComponent3, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 

/// Navigates to the previous screen.
onTapImage() { Get.back(); } 
/// Navigates to the jobDetailsTabContainerScreen when the action is triggered.
onTapBag() { Get.toNamed(AppRoutes.jobDetailsTabContainerScreen, ); } 
 }
