import '../models/fulltime1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class Fulltime1ItemWidget extends StatelessWidget {
  Fulltime1ItemWidget(
    this.fulltime1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Fulltime1ItemModel fulltime1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 6.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          fulltime1ItemModelObj.fulltime!.value,
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.64),
            fontSize: 12.fSize,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (fulltime1ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.indigo900,
        selectedColor: appTheme.indigo900,
        shape: (fulltime1ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  14.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  14.h,
                ),
              ),
        onSelected: (value) {
          fulltime1ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
