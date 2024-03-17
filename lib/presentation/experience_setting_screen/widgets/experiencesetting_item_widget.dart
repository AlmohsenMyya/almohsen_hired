import '../models/experiencesetting_item_model.dart';
import '../controller/experience_setting_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class ExperiencesettingItemWidget extends StatelessWidget {
  ExperiencesettingItemWidget(
    this.experiencesettingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExperiencesettingItemModel experiencesettingItemModelObj;

  var controller = Get.find<ExperienceSettingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16.v),
          child: Obx(
            () => CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(
                imagePath: experiencesettingItemModelObj.bag!.value,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 5.v,
            bottom: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  experiencesettingItemModelObj.internshipUIUX!.value,
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
                        experiencesettingItemModelObj.smallLabelRegular!.value,
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
                        experiencesettingItemModelObj.smallLabelRegular1!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Obx(
                      () => Text(
                        experiencesettingItemModelObj.zipcode!.value,
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
    );
  }
}
