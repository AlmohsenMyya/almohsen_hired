import 'package:flutter/material.dart';
import 'package:almohsen_s_application11/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up - Create Acount".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpCreateAcountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up - Complete Account ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpCompleteAccountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Job Type".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.jobTypeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Speciallization".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.speciallizationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select a Country".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectACountryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Enter OTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.enterOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Job Details - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.jobDetailsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Message Action".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageActionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Apply Job".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.applyJobScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Notifications - My Proposals - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .notificationsMyProposalsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Personal Info".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.personalInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Experience Setting".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.experienceSettingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "New Position".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.newPositionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Education".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewEducationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Privacy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
