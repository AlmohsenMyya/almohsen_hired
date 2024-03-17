import '../models/englishuk_item_model.dart';
import '../controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class EnglishukItemWidget extends StatelessWidget {
  EnglishukItemWidget(
    this.englishukItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EnglishukItemModel englishukItemModelObj;

  var controller = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5.v),
          child: Obx(
            () => Text(
              englishukItemModelObj.englishUK!.value,
              style: CustomTextStyles.titleMediumGray900,
            ),
          ),
        ),
        Obx(
          () => CustomImageView(
            imagePath: englishukItemModelObj.englishUK1!.value,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
        ),
      ],
    );
  }
}
