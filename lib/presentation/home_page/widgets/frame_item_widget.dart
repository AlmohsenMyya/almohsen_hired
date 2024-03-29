import '../models/frame_item_model.dart';
import '../controller/home_controller.dart';
import 'package:almohsen_s_application11/widgets/custom_icon_button.dart';
import '../models/fulltime1_item_model.dart';
import 'fulltime1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 273.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 96.v),
                child: CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgBag,
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
                        frameItemModelObj.seniorUIUXDesigner!.value,
                        style:
                            CustomTextStyles.titleSmallOnPrimaryContainerBold,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.8,
                      child: Obx(
                        () => Text(
                          frameItemModelObj.shopee!.value,
                          style: CustomTextStyles
                              .labelLargeOnPrimaryContainerSemiBold,
                        ),
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Opacity(
                      opacity: 0.64,
                      child: Obx(
                        () => Text(
                          frameItemModelObj.jakartaIndonesia!.value,
                          style:
                              CustomTextStyles.labelLargeOnPrimaryContainer_1,
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Obx(
                      () => Text(
                        frameItemModelObj.price!.value,
                        style: CustomTextStyles.labelLargeOnPrimaryContainer_3,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Obx(
                      () => Wrap(
                        runSpacing: 7.v,
                        spacing: 7.h,
                        children: List<Widget>.generate(
                          frameItemModelObj.fulltime1ItemList!.value.length,
                          (index) {
                            Fulltime1ItemModel model = frameItemModelObj
                                .fulltime1ItemList!.value[index];

                            return Fulltime1ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
