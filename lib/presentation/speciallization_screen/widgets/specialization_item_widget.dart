import '../models/specialization_item_model.dart';
import '../controller/speciallization_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class SpecializationItemWidget extends StatelessWidget {
  SpecializationItemWidget(
    this.specializationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SpecializationItemModel specializationItemModelObj;

  var controller = Get.find<SpeciallizationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: specializationItemModelObj.designCreative!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 1.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
            ),
            child: Obx(
              () => Text(
                specializationItemModelObj.designCreative1!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
