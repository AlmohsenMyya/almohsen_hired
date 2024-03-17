import '../models/savedlist_item_model.dart';
import '../controller/saved_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';
import '../models/fulltime7_item_model.dart';
import 'fulltime7_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class SavedlistItemWidget extends StatelessWidget {
  SavedlistItemWidget(
    this.savedlistItemModelObj, {
    Key? key,
    this.onTapBag,
  }) : super(
          key: key,
        );

  SavedlistItemModel savedlistItemModelObj;

  var controller = Get.find<SavedController>();

  VoidCallback? onTapBag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapBag!.call();
      },
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
              child: Obx(
                () => CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: savedlistItemModelObj.bag!.value,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      savedlistItemModelObj.digitalMarketing!.value,
                      style: CustomTextStyles.titleMediumBold_1,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Obx(
                    () => Text(
                      savedlistItemModelObj.motorola!.value,
                      style: CustomTextStyles.labelLargeGray500,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Obx(
                    () => Text(
                      savedlistItemModelObj.price!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Obx(
                    () => Wrap(
                      runSpacing: 8.v,
                      spacing: 8.h,
                      children: List<Widget>.generate(
                        savedlistItemModelObj.fulltime7ItemList!.value.length,
                        (index) {
                          Fulltime7ItemModel model = savedlistItemModelObj
                              .fulltime7ItemList!.value[index];

                          return Fulltime7ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgComponent3,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 30.h,
                bottom: 92.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
