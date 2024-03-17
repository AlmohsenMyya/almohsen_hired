import '../models/profile_item_model.dart';
import '../controller/profile_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.v,
      width: 295.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: profileItemModelObj.image!.value,
              height: 32.adaptSize,
              width: 32.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 8.h,
                top: 8.v,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Obx(
                  () => CustomIconButton(
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    child: CustomImageView(
                      imagePath: profileItemModelObj.bag!.value,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          profileItemModelObj.internshipUIUX!.value,
                          style: CustomTextStyles.titleSmallSemiBold,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Obx(
                              () => Text(
                                profileItemModelObj.smallLabelRegular!.value,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              top: 1.v,
                            ),
                            child: Obx(
                              () => Text(
                                profileItemModelObj.smallLabelRegular1!.value,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Obx(
                              () => Text(
                                profileItemModelObj.zipcode!.value,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
