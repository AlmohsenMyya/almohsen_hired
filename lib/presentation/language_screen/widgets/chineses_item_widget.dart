import '../models/chineses_item_model.dart';
import '../controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class ChinesesItemWidget extends StatelessWidget {
  ChinesesItemWidget(
    this.chinesesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChinesesItemModel chinesesItemModelObj;

  var controller = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Text(
        chinesesItemModelObj.chineses!.value,
        style: theme.textTheme.titleMedium,
      ),
    );
  }
}
