import 'package:almohsen_s_application11/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application11/widgets/app_bar/appbar_trailing_image.dart';import 'package:almohsen_s_application11/widgets/custom_search_view.dart';import 'widgets/searchlist_item_widget.dart';import 'models/searchlist_item_model.dart';import 'package:flutter/material.dart' hide SearchController;import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/search_controller.dart';class SearchScreen extends GetWidget<SearchController> {const SearchScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 30.v), child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [CustomSearchView(controller: controller.searchController, hintText: "lbl_search".tr), SizedBox(height: 24.v), _buildSearchList()])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage();}), centerTitle: true, title: AppbarTitle(text: "lbl_find_jobs".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgComponent3, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildSearchList() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 12.v);}, itemCount: controller.searchModelObj.value.searchlistItemList.value.length, itemBuilder: (context, index) {SearchlistItemModel model = controller.searchModelObj.value.searchlistItemList.value[index]; return SearchlistItemWidget(model, onTapSettings: () {onTapSettings();});})); } 

/// Navigates to the previous screen.
onTapImage() { Get.back(); } 
/// Navigates to the jobDetailsTabContainerScreen when the action is triggered.
onTapSettings() { Get.toNamed(AppRoutes.jobDetailsTabContainerScreen, ); } 
 }
