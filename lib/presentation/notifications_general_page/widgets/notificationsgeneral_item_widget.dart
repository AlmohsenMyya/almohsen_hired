import '../models/notificationsgeneral_item_model.dart';
import '../controller/notifications_general_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsgeneralItemWidget extends StatelessWidget {
  NotificationsgeneralItemWidget(
    this.notificationsgeneralItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsgeneralItemModel notificationsgeneralItemModelObj;

  var controller = Get.find<NotificationsGeneralController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 13.v),
              child: Obx(
                () => CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonStyleHelper.fillGrayTL16,
                  child: CustomImageView(
                    imagePath: notificationsgeneralItemModelObj.bag!.value,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      notificationsgeneralItemModelObj.juniorUIDesigner!.value,
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Obx(
                    () => Text(
                      notificationsgeneralItemModelObj.shopeeSg!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 4.v,
                bottom: 24.v,
              ),
              child: Obx(
                () => Text(
                  notificationsgeneralItemModelObj.time!.value,
                  style: CustomTextStyles.labelLargeGray500_1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Container(
          width: 233.h,
          margin: EdgeInsets.only(
            left: 44.h,
            right: 50.h,
          ),
          child: Obx(
            () => Text(
              notificationsgeneralItemModelObj.loremIpsumDolor!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelLargePrimary_1.copyWith(
                height: 1.67,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
