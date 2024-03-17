import '../models/message_item_model.dart';
import '../controller/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class MessageItemWidget extends StatelessWidget {
  MessageItemWidget(
    this.messageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessageItemModel messageItemModelObj;

  var controller = Get.find<MessageController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: messageItemModelObj.circleImage!.value,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
            margin: EdgeInsets.only(bottom: 17.v),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 5.v,
            bottom: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  messageItemModelObj.chanceSeptimus!.value,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              SizedBox(height: 7.v),
              Obx(
                () => Text(
                  messageItemModelObj.loremIpsumDolor!.value,
                  style: CustomTextStyles.titleSmallBluegray400,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 49.v,
          ),
          child: Obx(
            () => Text(
              messageItemModelObj.time!.value,
              style: CustomTextStyles.labelLargeSemiBold,
            ),
          ),
        ),
      ],
    );
  }
}
