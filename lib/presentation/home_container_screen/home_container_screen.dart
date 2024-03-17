import 'package:almohsen_s_application11/presentation/home_page/home_page.dart';import 'package:almohsen_s_application11/presentation/message_page/message_page.dart';import 'package:almohsen_s_application11/presentation/saved_page/saved_page.dart';import 'package:almohsen_s_application11/presentation/profile_page/profile_page.dart';import 'package:almohsen_s_application11/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/home_container_controller.dart';class HomeContainerScreen extends GetWidget<HomeContainerController> {const HomeContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Saved: return AppRoutes.savedPage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.messagePage: return MessagePage(); case AppRoutes.savedPage: return SavedPage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }
