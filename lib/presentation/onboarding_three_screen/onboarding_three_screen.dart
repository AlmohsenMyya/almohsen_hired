import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/ninetytwo_item_widget.dart';
import 'models/ninetytwo_item_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';
import 'controller/onboarding_three_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgOnboardingOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 29.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 5.v),
                SizedBox(
                  height: 699.v,
                  width: 327.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage422x313,
                        height: 422.v,
                        width: 313.h,
                        alignment: Alignment.topCenter,
                      ),
                      _buildNinetyThreeStack(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyThreeStack() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 367.v,
        width: 327.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Obx(
              () => CarouselSlider.builder(
                options: CarouselOptions(
                  height: 367.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    controller.sliderIndex.value = index;
                  },
                ),
                itemCount: controller.onboardingThreeModelObj.value
                    .ninetytwoItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  NinetytwoItemModel model = controller.onboardingThreeModelObj
                      .value.ninetytwoItemList.value[index];
                  return NinetytwoItemWidget(
                    model,
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Obx(
                () => Container(
                  height: 10.v,
                  margin: EdgeInsets.only(bottom: 112.v),
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.sliderIndex.value,
                    count: controller.onboardingThreeModelObj.value
                        .ninetytwoItemList.value.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 12,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: theme.colorScheme.primary.withOpacity(0.41),
                      dotHeight: 10.v,
                      dotWidth: 10.h,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
