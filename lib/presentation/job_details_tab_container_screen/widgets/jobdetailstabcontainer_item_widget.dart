import '../models/jobdetailstabcontainer_item_model.dart';
import '../controller/job_details_tab_container_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class JobdetailstabcontainerItemWidget extends StatelessWidget {
  JobdetailstabcontainerItemWidget(
    this.jobdetailstabcontainerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JobdetailstabcontainerItemModel jobdetailstabcontainerItemModelObj;

  var controller = Get.find<JobDetailsTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 67.h,
      child: Column(
        children: [
          Obx(
            () => CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillGreen,
              child: CustomImageView(
                imagePath: jobdetailstabcontainerItemModelObj.wallet!.value,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              jobdetailstabcontainerItemModelObj.salary!.value,
              style: CustomTextStyles.labelLargeGray500_1,
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              jobdetailstabcontainerItemModelObj.price!.value,
              style: CustomTextStyles.titleSmallSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
