import '../models/notificationsmyproposals_item_model.dart';
import '../controller/notifications_my_proposals_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';
import 'package:almohsen_s_application11/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsmyproposalsItemWidget extends StatelessWidget {
  NotificationsmyproposalsItemWidget(
    this.notificationsmyproposalsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsmyproposalsItemModel notificationsmyproposalsItemModelObj;

  var controller = Get.find<NotificationsMyProposalsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Obx(
              () => CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(7.h),
                child: CustomImageView(
                  imagePath:
                      notificationsmyproposalsItemModelObj.iconButton!.value,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      notificationsmyproposalsItemModelObj
                          .seniorUIUXDesigner!.value,
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Obx(
                    () => Text(
                      notificationsmyproposalsItemModelObj
                          .smallLabelRegular!.value,
                      style: CustomTextStyles.labelLargeGray500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 14.v),
        CustomElevatedButton(
          height: 28.v,
          width: 81.h,
          text: "lbl_opened".tr,
          margin: EdgeInsets.only(left: 60.h),
          buttonStyle: CustomButtonStyles.fillGreen,
          buttonTextStyle: CustomTextStyles.bodySmallGreen600,
        ),
      ],
    );
  }
}
