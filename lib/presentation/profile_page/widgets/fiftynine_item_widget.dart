import '../models/fiftynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class FiftynineItemWidget extends StatelessWidget {
  FiftynineItemWidget(
    this.fiftynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftynineItemModel fiftynineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 14.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          fiftynineItemModelObj.skills!.value,
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 12.fSize,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: (fiftynineItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        selectedColor: Colors.transparent,
        shape: (fiftynineItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray100,
                  width: 1.h,
                ),
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
          fiftynineItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
