import '../models/settings_item_model.dart';
import '../controller/home_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';
import '../models/fulltime3_item_model.dart';
import 'fulltime3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class SettingsItemWidget extends StatelessWidget {
  SettingsItemWidget(
    this.settingsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SettingsItemModel settingsItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 67.v,
              ),
              child: CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => Text(
                                  settingsItemModelObj.digitalMarketing!.value,
                                  style: CustomTextStyles.titleMediumBold_1,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Obx(
                                () => Text(
                                  settingsItemModelObj.motorola!.value,
                                  style: CustomTextStyles.labelLargeGray500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgComponent3,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(bottom: 22.v),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.v),
                    Obx(
                      () => Text(
                        settingsItemModelObj.price!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Obx(
                      () => Wrap(
                        runSpacing: 8.v,
                        spacing: 8.h,
                        children: List<Widget>.generate(
                          settingsItemModelObj.fulltime3ItemList!.value.length,
                          (index) {
                            Fulltime3ItemModel model = settingsItemModelObj
                                .fulltime3ItemList!.value[index];

                            return Fulltime3ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
