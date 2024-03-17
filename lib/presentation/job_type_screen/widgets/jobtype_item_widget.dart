import '../models/jobtype_item_model.dart';
import '../controller/job_type_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class JobtypeItemWidget extends StatelessWidget {
  JobtypeItemWidget(
    this.jobtypeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JobtypeItemModel jobtypeItemModelObj;

  var controller = Get.find<JobTypeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      width: 156.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Obx(
            () => CustomIconButton(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: jobtypeItemModelObj.work!.value,
              ),
            ),
          ),
          SizedBox(height: 29.v),
          Obx(
            () => Text(
              jobtypeItemModelObj.findAJob!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 9.v),
          SizedBox(
            width: 120.h,
            child: Obx(
              () => Text(
                jobtypeItemModelObj.itSEasyToFind!.value,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.labelLargeGray500_1.copyWith(
                  height: 1.67,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
