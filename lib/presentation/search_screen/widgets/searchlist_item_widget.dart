import '../models/searchlist_item_model.dart';
import '../controller/search_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';
import '../models/fulltime5_item_model.dart';
import 'fulltime5_item_widget.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class SearchlistItemWidget extends StatelessWidget {
  SearchlistItemWidget(
    this.searchlistItemModelObj, {
    Key? key,
    this.onTapSettings,
  }) : super(
          key: key,
        );

  SearchlistItemModel searchlistItemModelObj;

  var controller = Get.find<SearchController>();

  VoidCallback? onTapSettings;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSettings!.call();
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
                  padding: EdgeInsets.all(7.h),
                  child: CustomImageView(
                    imagePath: searchlistItemModelObj.settings!.value,
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
                      searchlistItemModelObj.digitalMarketing!.value,
                      style: CustomTextStyles.titleMediumBold_1,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Obx(
                    () => Text(
                      searchlistItemModelObj.motorola!.value,
                      style: CustomTextStyles.labelLargeGray500,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Obx(
                    () => Text(
                      searchlistItemModelObj.price!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Obx(
                    () => Wrap(
                      runSpacing: 8.v,
                      spacing: 8.h,
                      children: List<Widget>.generate(
                        searchlistItemModelObj.fulltime5ItemList!.value.length,
                        (index) {
                          Fulltime5ItemModel model = searchlistItemModelObj
                              .fulltime5ItemList!.value[index];

                          return Fulltime5ItemWidget(
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
