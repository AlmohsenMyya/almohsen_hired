import '../models/thirtyfourchipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class ThirtyfourchipviewItemWidget extends StatelessWidget {
  ThirtyfourchipviewItemWidget(
    this.thirtyfourchipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtyfourchipviewItemModel thirtyfourchipviewItemModelObj;

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
          thirtyfourchipviewItemModelObj.categories!.value,
          style: TextStyle(
            color: (thirtyfourchipviewItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.onPrimaryContainer.withOpacity(1)
                : theme.colorScheme.primary,
            fontSize: 12.fSize,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgCheckmarkOnprimarycontainer,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(right: 5.h),
        ),
        selected: (thirtyfourchipviewItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        selectedColor: appTheme.deepOrangeA200,
        shape: (thirtyfourchipviewItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  22.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray300,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  22.h,
                ),
              ),
        onSelected: (value) {
          thirtyfourchipviewItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
