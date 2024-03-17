import '../models/fulltime3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class Fulltime3ItemWidget extends StatelessWidget {
  Fulltime3ItemWidget(
    this.fulltime3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Fulltime3ItemModel fulltime3ItemModelObj;

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
          fulltime3ItemModelObj.fulltime!.value,
          style: TextStyle(
            color: appTheme.blueGray400,
            fontSize: 12.fSize,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (fulltime3ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray100,
        selectedColor: appTheme.gray100,
        shape: (fulltime3ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray400.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
        onSelected: (value) {
          fulltime3ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
