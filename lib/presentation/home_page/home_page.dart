import 'package:almohsen_s_application11/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application11/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:almohsen_s_application11/widgets/app_bar/appbar_subtitle.dart';
import 'package:almohsen_s_application11/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:almohsen_s_application11/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_application11/widgets/custom_search_view.dart';
import 'widgets/frame_item_widget.dart';
import 'models/frame_item_model.dart';
import 'widgets/settings_item_widget.dart';
import 'models/settings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: CustomSearchView(
                    controller: controller.searchController,
                    hintText: "lbl_search".tr,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_recommendation".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              SizedBox(height: 17.v),
              _buildFrame(),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_recent_jobs".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 15.v),
              _buildSettings(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 74.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgImage50x50,
        margin: EdgeInsets.only(left: 24.h),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "msg_hi_welcome_back".tr,
            ),
            SizedBox(height: 9.v),
            AppbarSubtitleTwo(
              text: "msg_find_your_dream2".tr,
              margin: EdgeInsets.only(right: 33.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 176.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: controller.homeModelObj.value.frameItemList.value.length,
            itemBuilder: (context, index) {
              FrameItemModel model =
                  controller.homeModelObj.value.frameItemList.value[index];
              return FrameItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettings() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount:
                controller.homeModelObj.value.settingsItemList.value.length,
            itemBuilder: (context, index) {
              SettingsItemModel model =
                  controller.homeModelObj.value.settingsItemList.value[index];
              return SettingsItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
