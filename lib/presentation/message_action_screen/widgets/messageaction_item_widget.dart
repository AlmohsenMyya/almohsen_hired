import '../models/messageaction_item_model.dart';
import '../controller/message_action_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class MessageactionItemWidget extends StatelessWidget {
  MessageactionItemWidget(
    this.messageactionItemModelObj, {
    Key? key,
    this.onTapEstherHoward,
  }) : super(
          key: key,
        );

  MessageactionItemModel messageactionItemModelObj;

  var controller = Get.find<MessageActionController>();

  VoidCallback? onTapEstherHoward;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEstherHoward!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 56.adaptSize,
            width: 56.adaptSize,
            margin: EdgeInsets.only(bottom: 17.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: messageactionItemModelObj.estherHoward!.value,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.green600,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                      border: Border.all(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 3.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    messageactionItemModelObj.estherHoward1!.value,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                SizedBox(height: 9.v),
                Obx(
                  () => Text(
                    messageactionItemModelObj.loremIpsumDolor!.value,
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
              bottom: 17.v,
            ),
            child: Column(
              children: [
                Obx(
                  () => Text(
                    messageactionItemModelObj.time!.value,
                    style: CustomTextStyles.labelLargeSemiBold,
                  ),
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 24.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder12,
                    ),
                    child: Obx(
                      () => Text(
                        messageactionItemModelObj.widget!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
