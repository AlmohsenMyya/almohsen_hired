import '../models/notifications_item_model.dart';
import '../controller/notifications_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(
    this.notificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsItemModel notificationsItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Obx(
            () => Text(
              notificationsItemModelObj.newPost!.value,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ),
        Obx(
          () => CustomSwitch(
            value: notificationsItemModelObj.isSelectedSwitch!.value,
            onChange: (value) {
              notificationsItemModelObj.isSelectedSwitch!.value =
                  value ?? false;
            },
          ),
        ),
      ],
    );
  }
}
