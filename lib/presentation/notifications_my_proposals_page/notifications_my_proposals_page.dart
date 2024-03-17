import 'widgets/notificationsmyproposals_item_widget.dart';import 'models/notificationsmyproposals_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/notifications_my_proposals_controller.dart';import 'models/notifications_my_proposals_model.dart';
// ignore_for_file: must_be_immutable
class NotificationsMyProposalsPage extends StatelessWidget {NotificationsMyProposalsPage({Key? key}) : super(key: key);

NotificationsMyProposalsController controller = Get.put(NotificationsMyProposalsController(NotificationsMyProposalsModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.background, child: Column(children: [SizedBox(height: 24.v), _buildNotificationsMyProposals()])))); } 
/// Section Widget
Widget _buildNotificationsMyProposals() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text("msg_application_status".tr, style: CustomTextStyles.titleMediumBold_1)), CustomImageView(imagePath: ImageConstant.imgArrowUp, height: 24.adaptSize, width: 24.adaptSize)]), SizedBox(height: 23.v), Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 8.5.v), child: SizedBox(width: 327.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray300)));}, itemCount: controller.notificationsMyProposalsModelObj.value.notificationsmyproposalsItemList.value.length, itemBuilder: (context, index) {NotificationsmyproposalsItemModel model = controller.notificationsMyProposalsModelObj.value.notificationsmyproposalsItemList.value[index]; return NotificationsmyproposalsItemWidget(model);}))])); } 
 }
