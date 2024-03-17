import '../models/jobschipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class JobschipviewItemWidget extends StatelessWidget {
  JobschipviewItemWidget(
    this.jobschipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JobschipviewItemModel jobschipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 14.v,
          right: 16.h,
          bottom: 14.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          jobschipviewItemModelObj.jobs!.value,
          style: TextStyle(
            color: (jobschipviewItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.primary
                : theme.colorScheme.onPrimaryContainer.withOpacity(1),
            fontSize: 12.fSize,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgCheckmarkOnprimarycontainer,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(right: 4.h),
        ),
        selected: (jobschipviewItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.deepOrangeA200,
        selectedColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        shape: (jobschipviewItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray300,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  22.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  22.h,
                ),
              ),
        onSelected: (value) {
          jobschipviewItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
